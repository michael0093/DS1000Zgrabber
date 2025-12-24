import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import pyvisa
import time
import os

class RigolScreenshotApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Rigol DS1000Z Screenshot Tool")
        self.root.geometry("420x335")
        self.root.resizable(True, True)

        # Look for icon.png in the same directory as the script
        icon_path = os.path.join(os.path.dirname(__file__), "icon.png")
        if os.path.exists(icon_path):
            try:
                self.icon_img = tk.PhotoImage(file=icon_path)
                self.root.iconphoto(True, self.icon_img)
            except Exception as e:
                print(f"Could not load icon: {e}")

        # Style Configuration
        self.style = ttk.Style()
        self.style.configure("TLabel", font=("Segoe UI", 9))
        self.style.configure("TButton", font=("Segoe UI", 9))

        # Main Container
        main_frame = ttk.Frame(root, padding="15")
        main_frame.pack(fill="both", expand=True)

        # 1. Device Location
        row0 = ttk.Frame(main_frame)
        row0.pack(fill="x", pady=5)
        ttk.Label(row0, text="Device:", width=7).pack(side="left")
        self.device_var = tk.StringVar()
        self.device_dropdown = ttk.Combobox(row0, textvariable=self.device_var, width=38)
        self.device_dropdown.pack(side="left", padx=5)
        
        # 2. Format
        row1 = ttk.Frame(main_frame)
        row1.pack(fill="x", pady=5)
        ttk.Label(row1, text="Format:", width=7).pack(side="left")
        self.format_var = tk.StringVar(value="PNG")
        self.format_dropdown = ttk.Combobox(row1, textvariable=self.format_var, values=["PNG", "BMP8", "BMP24", "JPEG", "TIFF"], state="readonly", width=12)
        self.format_dropdown.pack(side="left", padx=5)

        # 3. Colour?
        row2 = ttk.Frame(main_frame)
        row2.pack(fill="x", pady=5)
        ttk.Label(row2, text="Colour:", width=7).pack(side="left")
        self.colour_var = tk.StringVar(value="ON")
        ttk.Radiobutton(row2, text="ON", variable=self.colour_var, value="ON").pack(side="left", padx=5)
        ttk.Radiobutton(row2, text="OFF", variable=self.colour_var, value="OFF").pack(side="left", padx=5)

        # 4. Invert
        row3 = ttk.Frame(main_frame)
        row3.pack(fill="x", pady=5)
        ttk.Label(row3, text="Invert:", width=7).pack(side="left")
        self.invert_var = tk.StringVar(value="OFF")
        ttk.Radiobutton(row3, text="ON", variable=self.invert_var, value="ON").pack(side="left", padx=5)
        ttk.Radiobutton(row3, text="OFF", variable=self.invert_var, value="OFF").pack(side="left", padx=5)

        # 5. Capture Storage Location
        row4 = ttk.Frame(main_frame)
        row4.pack(fill="x", pady=5)
        ttk.Label(row4, text="Folder:", width=7).pack(side="left")
        self.storage_var = tk.StringVar(value=os.getcwd())
        self.storage_entry = ttk.Entry(row4, textvariable=self.storage_var, width=34)
        self.storage_entry.pack(side="left", padx=5)
        self.browse_btn = ttk.Button(row4, text="...", width=3, command=self.browse_location)
        self.browse_btn.pack(side="left")
        
        # 6. File Name (2 rows high, extension excluded)
        row5 = ttk.Frame(main_frame)
        row5.pack(fill="x", pady=5)
        ttk.Label(row5, text="File:", width=7).pack(side="left", anchor="nw")
        # Using Text widget for 2-row height
        self.filename_text = tk.Text(row5, width=40, height=2, font=("Segoe UI", 9))
        self.filename_text.insert("1.0", "Capture1")
        self.filename_text.pack(side="left", padx=5)

        # 7. Delay
        row6 = ttk.Frame(main_frame)
        row6.pack(fill="x", pady=5)
        ttk.Label(row6, text="Delay (s):", width=7).pack(side="left")
        self.delay_var = tk.DoubleVar(value=0)
        # Using Spinbox for up/down functionality
        self.delay_spinbox = tk.Spinbox(row6, from_=0, to=3600, increment=1, textvariable=self.delay_var, width=6)
        self.delay_spinbox.pack(side="left", padx=5)

        # 8. Action Buttons (in-line)
        self.capture_btn = ttk.Button(row6, text="Capture Screenshot", command=self.run_capture)
        self.capture_btn.pack(side="left", padx=5)
        
        self.refresh_btn = ttk.Button(row6, text="Refresh Devices", command=self.refresh_resources)
        self.refresh_btn.pack(side="left", padx=5)

        # Horizontal Rule
        separator = ttk.Separator(main_frame, orient='horizontal')
        separator.pack(fill='x', pady=10)

        # 9. Trigger Mode Controls
        row_trigger = ttk.Frame(main_frame)
        row_trigger.pack(fill="x", pady=5)
        
        # Trigger Delay
        ttk.Label(row_trigger, text="Delay (s):", width=7).pack(side="left")
        self.trigger_delay_var = tk.IntVar(value=0)
        self.trigger_delay_spinbox = tk.Spinbox(row_trigger, from_=0, to=3600, increment=1, textvariable=self.trigger_delay_var, width=6)
        self.trigger_delay_spinbox.pack(side="left", padx=5)

        # Mode Dropdown
        ttk.Label(row_trigger, text="Mode:", width=5).pack(side="left", padx=(10, 0))
        self.mode_var = tk.StringVar(value="Single")
        self.mode_dropdown = ttk.Combobox(row_trigger, textvariable=self.mode_var, values=["Single", "Stop"], state="readonly", width=9)
        self.mode_dropdown.pack(side="left", padx=5)

        # Set Button
        self.set_trigger_btn = ttk.Button(row_trigger, text="Set", width=10, command=self.set_trigger_settings)
        self.set_trigger_btn.pack(side="left", padx=15)

        # Initialization
        self.refresh_resources()

    def browse_location(self):
        """Opens a directory selection dialog."""
        directory = filedialog.askdirectory(initialdir=self.storage_var.get())
        if directory:
            self.storage_var.set(directory)

    def set_trigger_settings(self):
        """For setting the trigger mode on the device."""
        
        # Get delay
        try:
            trig_delay = self.trigger_delay_var.get()
            if trig_delay < 0: raise ValueError
        except ValueError:
             messagebox.showwarning("Input Error", "Delay must be a non-negative number.")
             return

        self.set_trigger_btn.config(state="disabled")
        self.root.update()

        # Implement Delay with Countdown
        if trig_delay > 0:
            remaining = trig_delay
            while remaining > 0:
                # Update UI
                self.trigger_delay_var.set(round(remaining, 1))
                self.root.update()
                
                # Sleep and decrement
                sleep_time = 1
                time.sleep(sleep_time)
                remaining -= sleep_time
            
            # Ensure it shows 0.0 at the end of countdown
            self.trigger_delay_var.set(0)
            self.root.update()


        try:
            resource_string = self.device_var.get()
            mode = str(self.mode_var.get())
            rm = pyvisa.ResourceManager('@py')
            scope = rm.open_resource(resource_string)
            scope.timeout = 1000 

            if mode == 'Single':
                scope.write('TRIGger:SWEep SINGLE')
            elif mode == 'Stop':
                scope.write(':STOP')
            else:
                raise ValueError(f"Value {mode} is unhandled") 

        except Exception as e:
            messagebox.showerror("Trigger Failed", f"An error occurred:\n{str(e)}")
        
        finally:
            if 'scope' in locals(): scope.close()
            if 'rm' in locals(): rm.close()
            self.set_trigger_btn.config(state="normal")
            
    def get_extension(self):
        """Returns the extension based on selected format."""
        fmt = self.format_var.get().lower()
        ext_map = {
            "png": ".png",
            "bmp8": ".bmp",
            "bmp24": ".bmp",
            "jpeg": ".jpg",
            "tiff": ".tif"
        }
        return ext_map.get(fmt, ".png")

    def refresh_resources(self):
        """Populates the device dropdown with available USB VISA resources."""
        try:
            rm = pyvisa.ResourceManager('@py')
            all_resources = rm.list_resources()
            usb_resources = [res for res in all_resources if res.startswith("USB")]
            
            self.device_dropdown['values'] = usb_resources
            if usb_resources:
                self.device_dropdown.current(0)
            else:
                self.device_var.set("")
            rm.close()
        except Exception as e:
            messagebox.showerror("VISA Error", f"Could not list resources: {e}")

    def run_capture(self):
        """Executes the screenshot logic."""
        resource_string = self.device_var.get()
        directory = self.storage_var.get()
        
        # Get filename from text box (excluding trailing newline) and clean it
        filename_base = self.filename_text.get("1.0", "end-1c").strip()
        if not filename_base:
            messagebox.showwarning("Input Error", "Please enter a file name.")
            return

        extension = self.get_extension()
        full_path = os.path.join(directory, f"{filename_base}{extension}")
        
        display_colour = self.colour_var.get()
        display_invert = self.invert_var.get()
        image_format = self.format_var.get()

        # Get delay
        try:
            original_delay = float(self.delay_var.get())
            if original_delay < 0: raise ValueError
        except ValueError:
             messagebox.showwarning("Input Error", "Delay must be a non-negative number.")
             return

        if not resource_string:
            messagebox.showwarning("Input Error", "Please select a USB Device.")
            return

        self.capture_btn.config(state="disabled")
        self.root.update()

        # Implement Delay with Countdown
        if original_delay > 0:
            remaining = original_delay
            while remaining > 0:
                # Update UI
                self.delay_var.set(round(remaining, 1))
                self.root.update()
                
                # Sleep and decrement
                sleep_time = 1
                time.sleep(sleep_time)
                remaining -= sleep_time
            
            # Ensure it shows 0.0 at the end of countdown
            self.delay_var.set(0)
            self.root.update()

        SCREEN_SIZE = 800 * 480
        SCREEN_COLOURS = 3
        HEADER_SIZE = 66
        FIXED_DATA_SIZE = SCREEN_SIZE * SCREEN_COLOURS + HEADER_SIZE

        try:
            rm = pyvisa.ResourceManager('@py')
            scope = rm.open_resource(resource_string)
            scope.timeout = 5000 

            command = f':DISPlay:DATA? {display_colour}, {display_invert}, {image_format}'
            scope.write(command)
            time.sleep(0.6)

            image_data = scope.read_raw(FIXED_DATA_SIZE)

            if not image_data.startswith(b'#'):
                raise ValueError("Unexpected data format: '#' header missing.")

            num_digits = int(image_data[1:2].decode('ascii'))
            actual_byte_count = int(image_data[2 : 2 + num_digits].decode('ascii'))
            
            header_offset = 2 + num_digits
            pure_image_data = image_data[header_offset : header_offset + actual_byte_count]

            with open(full_path, 'wb') as f:
                f.write(pure_image_data)

            #messagebox.showinfo("Success", f"Saved to:\n{full_path}")

        except Exception as e:
            messagebox.showerror("Capture Failed", f"An error occurred:\n{str(e)}")
        
        finally:
            if 'scope' in locals(): scope.close()
            if 'rm' in locals(): rm.close()
            self.capture_btn.config(state="normal")

if __name__ == "__main__":
    
    root = tk.Tk()
    app = RigolScreenshotApp(root)
    root.mainloop()