unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Base64;

type

  { TForm1 }

  TForm1 = class(TForm)
    Encode_B64: TButton;
    Decode_B64: TButton;
    Decode_Encode_B64_Input: TEdit;
    procedure Decode_B64Click(Sender: TObject);
    procedure Decode_Encode_B64_InputChange(Sender: TObject);
    procedure Encode_B64Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Encode_B64Click(Sender: TObject);
var
  encodedValue, input: string;
begin
  input := Decode_Encode_B64_Input.Text;
  encodedValue := EncodeStringBase64(input);
  Decode_Encode_B64_Input.Text := encodedValue;
end;

procedure TForm1.Decode_B64Click(Sender: TObject);
var
  decodedValue, input: string;
begin
  input := Decode_Encode_B64_Input.Text;
  decodedValue := DecodeStringBase64(input);
  Decode_Encode_B64_Input.Text := decodedValue;
end;

procedure TForm1.Decode_Encode_B64_InputChange(Sender: TObject);
begin

end;

end.

