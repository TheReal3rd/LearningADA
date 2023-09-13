with Ada.IO_Exceptions;
with Ada.Integer_Text_IO;
With Ada.Text_IO; Use Ada.Text_IO;

--Learning ADA
--Resources:
-- https://rosettacode.org/wiki/User_input/Text#Ada
-- https://stackoverflow.com/questions/36918159/how-to-have-multiple-conditionals-in-an-if-statement-in-ada
-- https://sites.radford.edu/~nokie/classes/320/io.html

--Really good wiki: https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#imperative-language-if-then-else

procedure Main is
   num1 : Integer;
   symbol : String(1..1);
   num2 : Integer;
   len : Integer;

   function intinput (message : String) return integer is
   begin
      loop
          begin
            declare
               returnvar : integer;
            begin
               put_line(message);
               ada.integer_text_io.get(returnvar);
               return returnvar;
            end;
         exception
            when error : ADA.IO_EXCEPTIONS.data_error =>
               put_line("Bad entry.");
               skip_line;
         end;
      end loop;
   end intinput;
begin
   put_line("Hello!");
   loop
      --Get the first number.
      num1 := intinput("Please enter your first number: ");
      --Get the Symbol this is to learn how to use conditions & String inputs.
      skip_line;--Apparently the keyboard buffer doesn't clear or something so you need to skip a line.
      put_line("Please enter your symbol: ");
      get_line(symbol, len);
      --Get the last number.
      skip_line;
      num2 := intinput("Please enter your second number: ");
      --Now the logic. From what it seems theres no else if or elif. There is just all the guides are crap. Use: https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#imperative-language-if-then-else
      declare
         result : Integer;
         print : boolean;
         begin
            print := true;
            if symbol = "+" then--So... Maybe try a switch or case statement? Tried it seems to only support numbers or enums.
               result := num1 + num2;
            elsif symbol = "-" then
               result := num1 - num2;
            elsif symbol = "*" then
               result := num1 * num2;
            elsif symbol = "/" then
               result := num1 / num2;
            else
               print := false;
               put_line("Unsupported symbol given.");
               put_line("Only supported calculations: +, -, / and *.");
            end if;
            if print = true then
               put_line(integer'image(result));
            end if;
      end;
   end loop;
end Main;
