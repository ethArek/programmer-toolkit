unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Base64;

type

  { TForm1 }

  TForm1 = class(TForm)
    Generate_UUID_Btn: TButton;
    UUID_Output: TEdit;
    Encode_B64: TButton;
    Decode_B64: TButton;
    Decode_Encode_B64_Input: TEdit;
    procedure Decode_B64Click(Sender: TObject);
    procedure Encode_B64Click(Sender: TObject);
    procedure Generate_UUID_BtnClick(Sender: TObject);
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

procedure TForm1.Generate_UUID_BtnClick(Sender: TObject);
var
  uuid: TGUID;
  uuidStr: string;
begin
  CreateGUID(uuid);
  uuidStr := GUIDToString(uuid);
  UUID_Output.Text := uuidStr.Trim('{').Trim('}');
end;

end.

