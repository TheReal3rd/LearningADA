with Ada.Text_IO; use Ada.Text_IO;

--GTK
with Gtk.Label; use Gtk.Label;
with Gtk.main; use Gtk.main;
with Gtk.Widget; use Gtk.Widget;
with Gtk.Window; use Gtk.Window;

--Source https://www.youtube.com/watch?v=IofrV5hsUvg Really good guide getting ALR and GTKADA setup. I recommend using alr.

procedure Hellogtk is
   Window  : Gtk_Window;
   Hello_Label : Gtk_Label;
   
   --The event listener.
   procedure Window_Close_CB (Window : access Gtk_Widget_Record'Class) is
      pragma Unreferenced (Window);
   begin
      Put_Line("Closing...");
      Gtk.Main.Main_Quit;
   end Window_Close_CB;
begin
   Put_Line("Hello, World!");
   --Init the Window
   Gtk.Main.Init;
   Gtk.Window.Gtk_New(Window);

   --Set Title and add destroy event listener.
   Window.Set_Title("Hello, World!");
   Window.On_Destroy(Window_Close_CB'Unrestricted_Access);
   Gtk_New(Hello_Label, "Hello, World!");
   Window.Add(Hello_Label);

   --Show all elements then do main loop.
   Window.Show_All;
   Gtk.Main.Main;
end Hellogtk;
