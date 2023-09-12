with Ada.Integer_Text_IO;
with Ada.Strings;
With Ada.Text_IO; Use Ada.Text_IO;
With Ada.Strings.Unbounded, Ada.Text_IO.Unbounded_IO;

procedure Main Is
   num1 : Integer;
   symbol : string(1..1);
   num2 : Integer;
   len : Integer;
Begin
   --Get the first number.
   put_line("Hello! Please enter your first number: ");
   Ada.Integer_Text_IO.Get(num1);
   put_line(Integer'Image(num1));
   --Get the Symbol this is to learn how to use conditions & String inputs.
   skip_line;--Apparently the keyboard buffer doesn't clear or something so you need to skip a line.
   put_line("Please enter your symbol: ");
   Get_Line(symbol, len);
   put_line(symbol);
   --Get the last number.
   skip_line;
   put_line("Please enter your second number: ");
   ada.integer_text_io.get(num2);
   put_line(integer'image(num2));
   --Now the logic. From what it seems theres no else if or elif.
   declare
      result : integer;
   begin
      if symbol = "+" then
         result := num1 + num2;
      else
         if symbol = "-" then
            result := num1 - num2;
         else
            if symbol = "*" then
               result := num1 * num2;
            else
               if symbol = "/" then
                  result := num1 / num2;
               else
                  put_line("Un supported symbol given.");
               end if;
            end if;
         end if;
      end if;
      put_line(integer'image(result));
      put_line("Done.");
   end;
end Main;
