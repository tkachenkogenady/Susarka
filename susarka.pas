unit susarka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    btn1: TButton;
    strngrd1: TStringGrid;
    lbl11: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a: array[0..531, 0..2 ] of Extended;
  b: array[0..6, 0..6 ] of Extended;
  t: array[0..60, 0..7 ] of Integer;
  kk:  array[0..15 ] of Extended;
   Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
combobox1.Items.Insert(0, '������� ����������� � ����� �����������');
combobox1.Items.Insert(1, '������� ����������� �  ���������� �����������');
combobox1.Items.Insert(2, '������� ����������� � ������� �����������');
combobox1.Items.Insert(3, '������� ������, �������, �� ������ �����');
combobox1.Items.Insert(4, '����� ����������');
combobox1.Items.Insert(5, '����, ����� �����������');
combobox1.Items.Insert(6, '��������� ��� ������� ������������');
combobox1.Items.Insert(7, '��������� �������');
combobox1.Items.Insert(8, '��������� ��� ����������� ��������');
combobox1.Items.Insert(9, '����');
combobox1.Items.Insert(10, '�����');
combobox1.Items.Insert(11, '������');
combobox1.Items.Insert(12, '���');
combobox1.Items.Insert(13, '�����');
combobox1.Items.Insert(14, '���');
//combobox1.Items.Insert(15, '��������');

strngrd1.Cells[0,0]:= '�������';
 strngrd1.Cells[0,1]:= '1';
 strngrd1.Cells[0,2]:= '2';
 strngrd1.Cells[0,3]:= '3';
 strngrd1.Cells[0,4]:= '4';
 strngrd1.Cells[0,5]:= '5';
 strngrd1.Cells[1,0]:= '��������� �������, %';
 strngrd1.Cells[2,0]:= 'ʳ����� ��������, %';
 strngrd1.Cells[3,0]:= '���� ���� �������, �';
 strngrd1.Cells[4,0]:= '��������, ���';
 strngrd1.Cells[5,0]:= '�����';
 strngrd1.Cells[6,0]:= '�� ��� ����������������';
 strngrd1.Cells[7,0]:= '�� 1 ����';
 strngrd1.Cells[8,0]:= '�� 2 ����';
 strngrd1.Cells[9,0]:= '�������� �.';
 strngrd1.Cells[0,6]:= '������';

kk[0]:=1; kk[1]:=1; kk[2]:=1; kk[3]:=0.8;  kk[4]:=0.6;  kk[5]:=1.1; kk[6]:=0.65; kk[7]:=0.65; kk[8]:=0.55; kk[9]:=1;
kk[10]:=0.8; kk[11]:=1.25; kk[12]:=0.4; kk[13]:=0.5;  kk[14]:=0.5;  kk[15]:=0.5; // �������� �� ��������


t[0,0]:=0;	t[0,1]:=10;	t[0,2]:=20;	t[0,3]:=1;	t[0,4]:=45;	t[0,5]:=120;	t[0,6]:=110;	t[0,7]:=130;
t[1,0]:=0;	t[1,1]:=10;	t[1,2]:=20;	t[1,3]:=2;	t[1,4]:=45;	t[1,5]:=120;	t[1,6]:=110;	t[1,7]:=130;
t[2,0]:=0;	t[2,1]:=20;	t[2,2]:=40;	t[2,3]:=1;	t[2,4]:=40;	t[2,5]:=90;	t[2,6]:=80;	t[2,7]:=100;
t[3,0]:=0;	t[3,1]:=20;	t[3,2]:=40;	t[3,3]:=2;	t[3,4]:=45;	t[3,5]:=110;	t[3,6]:=100;	t[3,7]:=120;
t[4,0]:=1;	t[4,1]:=10;	t[4,2]:=20;	t[4,3]:=1;	t[4,4]:=50;	t[4,5]:=140;	t[4,6]:=130;	t[4,7]:=150;
t[5,0]:=1;	t[5,1]:=10;	t[5,2]:=20;	t[5,3]:=2;	t[5,4]:=50;	t[5,5]:=140;	t[5,6]:=130;	t[5,7]:=150;
t[6,0]:=1;	t[6,1]:=20;	t[6,2]:=40;	t[6,3]:=1;	t[6,4]:=45;	t[6,5]:=110;	t[6,6]:=100;	t[6,7]:=120;
t[7,0]:=1;	t[7,1]:=20;	t[7,2]:=40;	t[7,3]:=2;	t[7,4]:=50;	t[7,5]:=130;	t[7,6]:=120;	t[7,7]:=140;
t[8,0]:=2;	t[8,1]:=10;	t[8,2]:=20;	t[8,3]:=1;	t[8,4]:=60;	t[8,5]:=150;	t[8,6]:=140;	t[8,7]:=160;
t[9,0]:=2;	t[9,1]:=10;	t[9,2]:=20;	t[9,3]:=2;	t[9,4]:=60;	t[9,5]:=150;	t[9,6]:=140;	t[9,7]:=160;
t[10,0]:=2;	t[10,1]:=20;	t[10,2]:=40;	t[10,3]:=1;	t[10,4]:=55;	t[10,5]:=120;	t[10,6]:=110;	t[10,7]:=130;
t[11,0]:=2;	t[11,1]:=20;	t[11,2]:=40;	t[11,3]:=2;	t[11,4]:=60;	t[11,5]:=140;	t[11,6]:=130;	t[11,7]:=150;
t[12,0]:=3;	t[12,1]:=10;	t[12,2]:=20;	t[12,3]:=1;	t[12,4]:=50;	t[12,5]:=100;	t[12,6]:=100;	t[12,7]:=110;
t[13,0]:=3;	t[13,1]:=10;	t[13,2]:=20;	t[13,3]:=2;	t[13,4]:=50;	t[13,5]:=100;	t[13,6]:=100;	t[13,7]:=110;
t[14,0]:=3;	t[14,1]:=20;	t[14,2]:=40;	t[14,3]:=1;	t[14,4]:=45;	t[14,5]:=90;	t[14,6]:=90;	t[14,7]:=100;
t[15,0]:=3;	t[15,1]:=20;	t[15,2]:=40;	t[15,3]:=2;	t[15,4]:=50;	t[15,5]:=100;	t[15,6]:=100;	t[15,7]:=110;
t[16,0]:=4;	t[16,1]:=10;	t[16,2]:=19;	t[16,3]:=1;	t[16,4]:=45;	t[16,5]:=70;	t[16,6]:=70;	t[16,7]:=80;
t[17,0]:=4;	t[17,1]:=10;	t[17,2]:=19;	t[17,3]:=2;	t[17,4]:=45;	t[17,5]:=70;	t[17,6]:=70;	t[17,7]:=80;
t[18,0]:=5;	t[18,1]:=10;	t[18,2]:=40;	t[18,3]:=1;	t[18,4]:=60;	t[18,5]:=150;	t[18,6]:=130;	t[18,7]:=160;
t[19,0]:=5;	t[19,1]:=10;	t[19,2]:=40;	t[19,3]:=2;	t[19,4]:=60;	t[19,5]:=150;	t[19,6]:=130;	t[19,7]:=160;
t[20,0]:=6;	t[20,1]:=10;	t[20,2]:=19;	t[20,3]:=1;	t[20,4]:=35;	t[20,5]:=60;	t[20,6]:=60;	t[20,7]:=60;
t[21,0]:=6;	t[21,1]:=10;	t[21,2]:=19;	t[21,3]:=2;	t[21,4]:=35;	t[21,5]:=60;	t[21,6]:=60;	t[21,7]:=60;
t[22,0]:=6;	t[22,1]:=19;	t[22,2]:=40;	t[22,3]:=1;	t[22,4]:=30;	t[22,5]:=50;	t[22,6]:=50;	t[22,7]:=50;
t[23,0]:=6;	t[23,1]:=19;	t[23,2]:=40;	t[23,3]:=2;	t[23,4]:=35;	t[23,5]:=60;	t[23,6]:=60;	t[23,7]:=60;
t[24,0]:=7;	t[24,1]:=10;	t[24,2]:=22;	t[24,3]:=1;	t[24,4]:=50;	t[24,5]:=150;	t[24,6]:=130;	t[24,7]:=160;
t[25,0]:=7;	t[25,1]:=10;	t[25,2]:=22;	t[25,3]:=2;	t[25,4]:=50;	t[25,5]:=150;	t[25,6]:=130;	t[25,7]:=160;
t[26,0]:=7;	t[26,1]:=22;	t[26,2]:=40;	t[26,3]:=1;	t[26,4]:=50;	t[26,5]:=150;	t[26,6]:=130;	t[26,7]:=160;
t[27,0]:=7;	t[27,1]:=22;	t[27,2]:=40;	t[27,3]:=2;	t[27,4]:=50;	t[27,5]:=150;	t[27,6]:=130;	t[27,7]:=160;
t[28,0]:=8;	t[28,1]:=10;	t[28,2]:=40;	t[28,3]:=1;	t[28,4]:=45;	t[28,5]:=120;	t[28,6]:=130;	t[28,7]:=110;
t[29,0]:=8;	t[29,1]:=10;	t[29,2]:=40;	t[29,3]:=2;	t[29,4]:=45;	t[29,5]:=120;	t[29,6]:=130;	t[29,7]:=110;
t[30,0]:=9;	t[30,1]:=10;	t[30,2]:=40;	t[30,3]:=1;	t[30,4]:=50;	t[30,5]:=140;	t[30,6]:=130;	t[30,7]:=160;
t[31,0]:=9;	t[31,1]:=10;	t[31,2]:=40;	t[31,3]:=2;	t[31,4]:=50;	t[31,5]:=140;	t[31,6]:=130;	t[31,7]:=160;
t[32,0]:=10;	t[32,1]:=10;	t[32,2]:=40;	t[32,3]:=1;	t[32,4]:=40;	t[32,5]:=80;	t[32,6]:=80;	t[32,7]:=100;
t[33,0]:=10;	t[33,1]:=10;	t[33,2]:=40;	t[33,3]:=2;	t[33,4]:=40;	t[33,5]:=80;	t[33,6]:=80;	t[33,7]:=100;
t[34,0]:=11;	t[34,1]:=10;	t[34,2]:=40;	t[34,3]:=1;	t[34,4]:=40;	t[34,5]:=90;	t[34,6]:=90;	t[34,7]:=110;
t[35,0]:=11;	t[35,1]:=10;	t[35,2]:=40;	t[35,3]:=2;	t[35,4]:=40;	t[35,5]:=90;	t[35,6]:=90;	t[35,7]:=110;
t[36,0]:=12;	t[36,1]:=10;	t[36,2]:=30;	t[36,3]:=1;	t[36,4]:=35;	t[36,5]:=70;	t[36,6]:=70;	t[36,7]:=60;
t[37,0]:=12;	t[37,1]:=10;	t[37,2]:=30;	t[37,3]:=2;	t[37,4]:=35;	t[37,5]:=70;	t[37,6]:=70;	t[37,7]:=60;
t[38,0]:=13;	t[38,1]:=10;	t[38,2]:=20;	t[38,3]:=1;	t[38,4]:=45;	t[38,5]:=80;	t[38,6]:=80;	t[38,7]:=100;
t[39,0]:=13;	t[39,1]:=10;	t[39,2]:=20;	t[39,3]:=2;	t[39,4]:=45;	t[39,5]:=80;	t[39,6]:=80;	t[39,7]:=100;
t[40,0]:=13;	t[40,1]:=20;	t[40,2]:=40;	t[40,3]:=1;	t[40,4]:=40;	t[40,5]:=70;	t[40,6]:=70;	t[40,7]:=90;
t[41,0]:=13;	t[41,1]:=20;	t[41,2]:=40;	t[41,3]:=2;	t[41,4]:=40;	t[41,5]:=70;	t[41,6]:=70;	t[41,7]:=90;
t[42,0]:=14;	t[42,1]:=10;	t[42,2]:=19;	t[42,3]:=1;	t[42,4]:=30;	t[42,5]:=60;	t[42,6]:=60;	t[42,7]:=80;
t[43,0]:=14;	t[43,1]:=10;	t[43,2]:=19;	t[43,3]:=2;	t[43,4]:=30;	t[43,5]:=60;	t[43,6]:=60;	t[43,7]:=80;
t[44,0]:=14;	t[44,1]:=19;	t[44,2]:=40;	t[44,3]:=1;	t[44,4]:=25;	t[44,5]:=50;	t[44,6]:=50;	t[44,7]:=70;
t[45,0]:=14;	t[45,1]:=19;	t[45,2]:=40;	t[45,3]:=2;	t[45,4]:=25;	t[45,5]:=50;	t[45,6]:=50;	t[45,7]:=70;
t[46,0]:=15;	t[46,1]:=5;	t[46,2]:=15;	t[46,3]:=1;	t[46,4]:=55;	t[46,5]:=120;	t[46,6]:=120;	t[46,7]:=135;
t[47,0]:=15;	t[47,1]:=5;	t[47,2]:=15;	t[47,3]:=2;	t[47,4]:=55;	t[47,5]:=120;	t[47,6]:=120;	t[47,7]:=135;
t[48,0]:=15;	t[48,1]:=15;	t[48,2]:=20;	t[48,3]:=1;	t[48,4]:=55;	t[48,5]:=115;	t[48,6]:=115;	t[48,7]:=130;
t[49,0]:=15;	t[49,1]:=15;	t[49,2]:=20;	t[49,3]:=2;	t[49,4]:=55;	t[49,5]:=115;	t[49,6]:=115;	t[49,7]:=130;
t[50,0]:=15;	t[50,1]:=20;	t[50,2]:=30;	t[50,3]:=1;	t[50,4]:=55;	t[50,5]:=110;	t[50,6]:=110;	t[50,7]:=125;
t[51,0]:=15;	t[51,1]:=20;	t[51,2]:=30;	t[51,3]:=2;	t[51,4]:=55;	t[51,5]:=115;	t[51,6]:=115;	t[51,7]:=130;



a[0,0]:=11.5;	a[0,1]:=10;	a[0,2]:=0.86;	a[101,0]:=19;	a[101,1]:=14.0;	a[101,2]:=0.92;	a[201,0]:=24;	a[201,1]:=17;	a[201,2]:=1.01;	a[301,0]:=28.5;	a[301,1]:=20.5;	a[301,2]:=1.1;	a[401,0]:=32.5;	a[401,1]:=26;	a[401,2]:=0.91;	a[51,0]:=16;	a[51,1]:=12.5;	a[51,2]:=0.85;	a[151,0]:=21;	a[151,1]:=17.5;	a[151,2]:=0.6;	a[251,0]:=26.5;	a[251,1]:=18;	a[251,2]:=1.17;	a[351,0]:=30;	a[351,1]:=22.5;	a[351,2]:=1.03;	a[451,0]:=35;	a[451,1]:=25;	a[451,2]:=1.37;	a[501,0]:=39.5;	a[501,1]:=33;	a[501,2]:=0.91;
a[1,0]:=12.5;	a[1,1]:=11;	a[1,2]:=0.69;	a[102,0]:=19.5;	a[102,1]:=14.5;	a[102,2]:=0.89;	a[202,0]:=24.5;	a[202,1]:=17.5;	a[202,2]:=1;	a[302,0]:=28;	a[302,1]:=20.5;	a[302,2]:=1.03;	a[402,0]:=32;	a[402,1]:=26;	a[402,2]:=0.85;	a[52,0]:=16.5;	a[52,1]:=13;	a[52,2]:=0.8;	a[152,0]:=21.5;	a[152,1]:=18;	a[152,2]:=0.59;	a[252,0]:=26;	a[252,1]:=18;	a[252,2]:=1.13;	a[352,0]:=30;	a[352,1]:=23;	a[352,2]:=0.97;	a[452,0]:=35.5;	a[452,1]:=25.5;	a[452,2]:=1.34;	a[502,0]:=39;	a[502,1]:=33;	a[502,2]:=0.85;
a[2,0]:=13.5;	a[2,1]:=10;	a[2,2]:=1.13;	a[103,0]:=19;	a[103,1]:=14.5;	a[103,2]:=0.84;	a[203,0]:=24;	a[203,1]:=17.5;	a[203,2]:=0.96;	a[303,0]:=28.5;	a[303,1]:=21;	a[303,2]:=1.03;	a[403,0]:=32.5;	a[403,1]:=26.5;	a[403,2]:=0.84;	a[53,0]:=16;	a[53,1]:=13;	a[53,2]:=0.74;	a[153,0]:=21;	a[153,1]:=18;	a[153,2]:=0.52;	a[253,0]:=26;	a[253,1]:=18.5;	a[253,2]:=1.12;	a[353,0]:=30.5;	a[353,1]:=23;	a[353,2]:=1.03;	a[453,0]:=35;	a[453,1]:=25.5;	a[453,2]:=1.29;	a[503,0]:=39.5;	a[503,1]:=33.5;	a[503,2]:=0.84;
a[4,0]:=13;	a[4,1]:=10;	a[4,2]:=1.1;	a[104,0]:=19.5;	a[104,1]:=15;	a[104,2]:=0.8;	a[204,0]:=24.5;	a[204,1]:=18;	a[204,2]:=0.96;	a[304,0]:=28;	a[304,1]:=21;	a[304,2]:=0.97;	a[404,0]:=32;	a[404,1]:=26.5;	a[404,2]:=0.8;	a[54,0]:=16.5;	a[54,1]:=13.5;	a[54,2]:=0.7;	a[154,0]:=22;	a[154,1]:=13;	a[154,2]:=1.34;	a[254,0]:=26;	a[254,1]:=18.5;	a[254,2]:=1.05;	a[354,0]:=30.5;	a[354,1]:=23.5;	a[354,2]:=0.96;	a[454,0]:=36.5;	a[454,1]:=26;	a[454,2]:=1.29;	a[504,0]:=39;	a[504,1]:=33.5;	a[504,2]:=0.8;
a[5,0]:=13.5;	a[5,1]:=10.5;	a[5,2]:=1.03;	a[105,0]:=19;	a[105,1]:=15;	a[105,2]:=0.74;	a[205,0]:=24;	a[205,1]:=18;	a[205,2]:=0.91;	a[305,0]:=28.5;	a[305,1]:=21.5;	a[305,2]:=0.96;	a[405,0]:=32.5;	a[405,1]:=27;	a[405,2]:=0.8;	a[55,0]:=16;	a[55,1]:=13.5;	a[55,2]:=0.62;	a[155,0]:=22.5;	a[155,1]:=13.5;	a[155,2]:=1.31;	a[255,0]:=26.5;	a[255,1]:=19;	a[255,2]:=1.05;	a[355,0]:=30;	a[355,1]:=23.5;	a[355,2]:=0.91;	a[455,0]:=37.5;	a[455,1]:=30.5;	a[455,2]:=0.96;	a[505,0]:=39.5;	a[505,1]:=34;	a[505,2]:=0.8;
a[6,0]:=13;	a[6,1]:=10.5;	a[6,2]:=0.93;	a[106,0]:=19.5;	a[106,1]:=15.5;	a[106,2]:=0.73;	a[206,0]:=24.5;	a[206,1]:=18.5;	a[206,2]:=0.89;	a[306,0]:=28;	a[306,1]:=21.5;	a[306,2]:=0.92;	a[406,0]:=32;	a[406,1]:=27;	a[406,2]:=0.74;	a[56,0]:=16.5;	a[56,1]:=14;	a[56,2]:=0.6;	a[156,0]:=22;	a[156,1]:=13.5;	a[156,2]:=1.27;	a[256,0]:=26;	a[256,1]:=19;	a[256,2]:=0.99;	a[356,0]:=30.5;	a[356,1]:=24;	a[356,2]:=0.91;	a[456,0]:=37;	a[456,1]:=30.5;	a[456,2]:=0.91;	a[506,0]:=39;	a[506,1]:=34;	a[506,2]:=0.74;
a[7,0]:=13.5;	a[7,1]:=11;	a[7,2]:=0.86;	a[107,0]:=19;	a[107,1]:=15.5;	a[107,2]:=0.66;	a[207,0]:=24;	a[207,1]:=18.5;	a[207,2]:=0.86;	a[307,0]:=28.5;	a[307,1]:=22;	a[307,2]:=0.92;	a[407,0]:=33;	a[407,1]:=23;	a[407,2]:=1.37;	a[57,0]:=16;	a[57,1]:=14.5;	a[57,2]:=0.52;	a[157,0]:=22.5;	a[157,1]:=14;	a[157,2]:=1.27;	a[257,0]:=26.5;	a[257,1]:=19.5;	a[257,2]:=0.97;	a[357,0]:=30;	a[357,1]:=24;	a[357,2]:=0.85;	a[457,0]:=37.5;	a[457,1]:=31;	a[457,2]:=0.91;	a[507,0]:=39.5;	a[507,1]:=34.5;	a[507,2]:=0.74;
a[8,0]:=13;	a[8,1]:=11;	a[8,2]:=0.79;	a[108,0]:=19.5;	a[108,1]:=16;	a[108,2]:=0.64;	a[208,0]:=24.5;	a[208,1]:=19;	a[208,2]:=0.85;	a[308,0]:=28;	a[308,1]:=22;	a[308,2]:=0.86;	a[408,0]:=33.5;	a[408,1]:=23.5;	a[408,2]:=1.34;	a[58,0]:=16.5;	a[58,1]:=14.5;	a[58,2]:=0.5;	a[158,0]:=22;	a[158,1]:=14;	a[158,2]:=1.2;	a[258,0]:=26;	a[258,1]:=19.5;	a[258,2]:=0.93;	a[358,0]:=30.5;	a[358,1]:=24.5;	a[358,2]:=0.84;	a[458,0]:=37;	a[458,1]:=31;	a[458,2]:=0.85;	a[508,0]:=40;	a[508,1]:=30;	a[508,2]:=1.37;
a[9,0]:=13.5;	a[9,1]:=11.5;	a[9,2]:=0.73;	a[109,0]:=19;	a[109,1]:=16;	a[109,2]:=0.57;	a[209,0]:=24;	a[209,1]:=19;	a[209,2]:=0.8;	a[309,0]:=28.5;	a[309,1]:=22.5;	a[309,2]:=0.86;	a[409,0]:=33;	a[409,1]:=23.5;	a[409,2]:=1.29;	a[59,0]:=16;	a[59,1]:=14;	a[59,2]:=0.42;	a[159,0]:=22.5;	a[159,1]:=14.5;	a[159,2]:=1.17;	a[259,0]:=26.5;	a[259,1]:=20;	a[259,2]:=0.93;	a[359,0]:=30;	a[359,1]:=24.5;	a[359,2]:=0.8;	a[459,0]:=37.5;	a[459,1]:=31.5;	a[459,2]:=0.84;	a[509,0]:=40.5;	a[509,1]:=30.5;	a[509,2]:=1.34;
a[10,0]:=13;	a[10,1]:=11.5;	a[10,2]:=0.62;	a[110,0]:=19.5;	a[110,1]:=16.5;	a[110,2]:=0.56;	a[210,0]:=24.5;	a[210,1]:=19.5;	a[210,2]:=0.79;	a[310,0]:=28;	a[310,1]:=22.5;	a[310,2]:=0.82;	a[410,0]:=33.5;	a[410,1]:=24;	a[410,2]:=1.29;	a[60,0]:=17;	a[60,1]:=11;	a[60,2]:=1.31;	a[160,0]:=22;	a[160,1]:=14.5;	a[160,2]:=1.13;	a[260,0]:=26;	a[260,1]:=20;	a[260,2]:=0.88;	a[360,0]:=30.5;	a[360,1]:=25;	a[360,2]:=0.8;	a[460,0]:=37;	a[460,1]:=31.5;	a[460,2]:=0.8;	a[510,0]:=40;	a[510,1]:=30.5;	a[510,2]:=1.29;
a[11,0]:=14.5;	a[11,1]:=12;	a[11,2]:=0.57;	a[111,0]:=19;	a[111,1]:=16.5;	a[111,2]:=0.49;	a[211,0]:=24;	a[211,1]:=19.5;	a[211,2]:=0.72;	a[311,0]:=28.5;	a[311,1]:=23;	a[311,2]:=0.8;	a[411,0]:=33;	a[411,1]:=24;	a[411,2]:=1.22;	a[61,0]:=17.5;	a[61,1]:=11.5;	a[61,2]:=1.24;	a[161,0]:=22.5;	a[161,1]:=15;	a[161,2]:=1.12;	a[261,0]:=26.5;	a[261,1]:=20.5;	a[261,2]:=0.87;	a[361,0]:=30;	a[361,1]:=25;	a[361,2]:=0.74;	a[461,0]:=37.5;	a[461,1]:=32;	a[461,2]:=0.8;	a[511,0]:=40.5;	a[511,1]:=31;	a[511,2]:=1.29;
a[12,0]:=14.5;	a[12,1]:=10;	a[12,2]:=1.27;	a[112,0]:=19.5;	a[112,1]:=17;	a[112,2]:=0.46;	a[212,0]:=24.5;	a[212,1]:=20;	a[212,2]:=0.71;	a[312,0]:=28;	a[312,1]:=23;	a[312,2]:=0.75;	a[412,0]:=33.5;	a[412,1]:=24.5;	a[412,2]:=1.2;	a[62,0]:=17;	a[62,1]:=11.5;	a[62,2]:=1.2;	a[162,0]:=22;	a[162,1]:=15;	a[162,2]:=1.08;	a[262,0]:=26;	a[262,1]:=20.5;	a[262,2]:=0.82;	a[362,0]:=30.5;	a[362,1]:=25.5;	a[362,2]:=0.74;	a[462,0]:=37;	a[462,1]:=32;	a[462,2]:=0.74;	a[512,0]:=40;	a[512,1]:=31;	a[512,2]:=1.22;
a[13,0]:=14;	a[13,1]:=10;	a[13,2]:=1.2;	a[113,0]:=19;	a[113,1]:=17;	a[113,2]:=0.42;	a[213,0]:=24;	a[213,1]:=20;	a[213,2]:=0.65;	a[313,0]:=28.5;	a[313,1]:=23.5;	a[313,2]:=0.74;	a[413,0]:=33;	a[413,1]:=24.5;	a[413,2]:=1.15;	a[63,0]:=17.5;	a[63,1]:=12;	a[63,2]:=1.13;	a[163,0]:=22.5;	a[163,1]:=15.5;	a[163,2]:=1.07;	a[263,0]:=26.5;	a[263,1]:=21;	a[263,2]:=0.82;	a[363,0]:=31;	a[363,1]:=21;	a[363,2]:=1.37;	a[463,0]:=37.5;	a[463,1]:=32.5;	a[463,2]:=0.74;	a[513,0]:=40.5;	a[513,1]:=31.5;	a[513,2]:=1.2;
a[14,0]:=14.5;	a[14,1]:=10.5;	a[14,2]:=1.13;	a[114,0]:=19.5;	a[114,1]:=17.5;	a[114,2]:=0.42;	a[214,0]:=24.5;	a[214,1]:=20.5;	a[214,2]:=0.64;	a[314,0]:=28;	a[314,1]:=23.5;	a[314,2]:=0.68;	a[414,0]:=33.5;	a[414,1]:=25;	a[414,2]:=1.15;	a[64,0]:=17;	a[64,1]:=12;	a[64,2]:=1.08;	a[164,0]:=22;	a[164,1]:=15.5;	a[164,2]:=1.01;	a[264,0]:=26;	a[264,1]:=21;	a[264,2]:=0.77;	a[364,0]:=31.5;	a[364,1]:=21.5;	a[364,2]:=1.34;	a[464,0]:=38;	a[464,1]:=28;	a[464,2]:=1.37;	a[514,0]:=40;	a[514,1]:=31.5;	a[514,2]:=1.15;
a[15,0]:=14;	a[15,1]:=10.5;	a[15,2]:=1.07;	a[115,0]:=20;	a[115,1]:=13;	a[115,2]:=1.15;	a[215,0]:=24;	a[215,1]:=20.5;	a[215,2]:=0.56;	a[315,0]:=28.5;	a[315,1]:=24;	a[315,2]:=0.68;	a[415,0]:=33;	a[415,1]:=25;	a[415,2]:=1.1;	a[65,0]:=17.5;	a[65,1]:=12.5;	a[65,2]:=1.03;	a[165,0]:=22.5;	a[165,1]:=16;	a[165,2]:=1;	a[265,0]:=26.5;	a[265,1]:=21.5;	a[265,2]:=0.76;	a[365,0]:=31;	a[365,1]:=21.5;	a[365,2]:=1.29;	a[465,0]:=38.5;	a[465,1]:=28.5;	a[465,2]:=1.34;	a[515,0]:=40.5;	a[515,1]:=32;	a[515,2]:=1.15;
a[16,0]:=14.5;	a[16,1]:=11;	a[16,2]:=1;	a[116,0]:=20.5;	a[116,1]:=13.5;	a[116,2]:=1.12;	a[216,0]:=24.5;	a[216,1]:=21;	a[216,2]:=0.56;	a[316,0]:=28;	a[316,1]:=24;	a[316,2]:=0.62;	a[416,0]:=33.5;	a[416,1]:=25.5;	a[416,2]:=1.08;	a[66,0]:=17;	a[66,1]:=12.5;	a[66,2]:=0.97;	a[166,0]:=22;	a[166,1]:=16;	a[166,2]:=0.96;	a[266,0]:=26;	a[266,1]:=21.5;	a[266,2]:=0.69;	a[366,0]:=31.5;	a[366,1]:=22;	a[366,2]:=1.29;	a[466,0]:=38;	a[466,1]:=28.5;	a[466,2]:=1.29;	a[516,0]:=40;	a[516,1]:=32;	a[516,2]:=1.1;
a[17,0]:=14;	a[17,1]:=11;	a[17,2]:=0.95;	a[117,0]:=20;	a[117,1]:=13.5;	a[117,2]:=1.08;	a[217,0]:=24;	a[217,1]:=21;	a[217,2]:=0.49;	a[317,0]:=29;	a[317,1]:=19;	a[317,2]:=1.37;	a[417,0]:=33;	a[417,1]:=25.5;	a[417,2]:=1.03;	a[67,0]:=17.5;	a[67,1]:=13;	a[67,2]:=0.93;	a[167,0]:=22.5;	a[167,1]:=16.5;	a[167,2]:=0.95;	a[267,0]:=26;	a[267,1]:=22;	a[267,2]:=0.62;	a[367,0]:=31;	a[367,1]:=22;	a[367,2]:=1.22;	a[467,0]:=38.5;	a[467,1]:=29;	a[467,2]:=1.29;	a[517,0]:=40.5;	a[517,1]:=32.5;	a[517,2]:=1.08;
a[18,0]:=14.5;	a[18,1]:=11.5;	a[18,2]:=0.88;	a[118,0]:=20.5;	a[118,1]:=14;	a[118,2]:=1;	a[218,0]:=24.5;	a[218,1]:=21.5;	a[218,2]:=0.48;	a[318,0]:=29.5;	a[318,1]:=19.5;	a[318,2]:=1.34;	a[418,0]:=33.5;	a[418,1]:=26;	a[418,2]:=1.03;	a[68,0]:=17;	a[68,1]:=13;	a[68,2]:=0.87;	a[168,0]:=22;	a[168,1]:=16.5;	a[168,2]:=0.89;	a[268,0]:=26.5;	a[268,1]:=22.5;	a[268,2]:=0.62;	a[368,0]:=31.5;	a[368,1]:=22.5;	a[368,2]:=1.2;	a[468,0]:=38;	a[468,1]:=29;	a[468,2]:=1.22;	a[518,0]:=40;	a[518,1]:=32.5;	a[518,2]:=1.03;
a[19,0]:=14;	a[19,1]:=11.5;	a[19,2]:=0.8;	a[119,0]:=20.5;	a[119,1]:=14.5;	a[119,2]:=0.99;	a[219,0]:=24;	a[219,1]:=21.5;	a[219,2]:=0.42;	a[319,0]:=29.5;	a[319,1]:=20;	a[319,2]:=1.29;	a[419,0]:=33;	a[419,1]:=26;	a[419,2]:=0.97;	a[69,0]:=17.5;	a[69,1]:=13.5;	a[69,2]:=0.84;	a[169,0]:=22.5;	a[169,1]:=17;	a[169,2]:=0.88;	a[269,0]:=26;	a[269,1]:=22.5;	a[269,2]:=0.54;	a[369,0]:=31;	a[369,1]:=22.5;	a[369,2]:=1.15;	a[469,0]:=38.5;	a[469,1]:=29.5;	a[469,2]:=1.2;	a[519,0]:=40.5;	a[519,1]:=33;	a[519,2]:=1.03;
a[20,0]:=14.5;	a[20,1]:=12;	a[20,2]:=0.75;	a[120,0]:=20;	a[120,1]:=14.5;	a[120,2]:=0.93;	a[220,0]:=25;	a[220,1]:=15;	a[220,2]:=1.43;	a[320,0]:=29;	a[320,1]:=19.5;	a[320,2]:=1.29;	a[420,0]:=33.5;	a[420,1]:=26.5;	a[420,2]:=0.96;	a[70,0]:=17;	a[70,1]:=13.5;	a[70,2]:=0.76;	a[170,0]:=22;	a[170,1]:=17;	a[170,2]:=0.86;	a[270,0]:=27;	a[270,1]:=17;	a[270,2]:=1.39;	a[370,0]:=31.5;	a[370,1]:=23;	a[370,2]:=1.15;	a[470,0]:=38;	a[470,1]:=29.5;	a[470,2]:=1.15;	a[520,0]:=40;	a[520,1]:=33;	a[520,2]:=0.97;
a[21,0]:=14;	a[21,1]:=12;	a[21,2]:=0.68;	a[121,0]:=20.5;	a[121,1]:=15;	a[121,2]:=0.93;	a[221,0]:=25.5;	a[221,1]:=15;	a[221,2]:=1.4;	a[321,0]:=29;	a[321,1]:=20;	a[321,2]:=1.24;	a[421,0]:=33;	a[421,1]:=26.5;	a[421,2]:=0.91;	a[71,0]:=17.5;	a[71,1]:=14;	a[71,2]:=0.73;	a[171,0]:=22.5;	a[171,1]:=17.5;	a[171,2]:=0.82;	a[271,0]:=27.5;	a[271,1]:=17.5;	a[271,2]:=1.37;	a[371,0]:=31.5;	a[371,1]:=23.5;	a[371,2]:=1.08;	a[471,0]:=38.5;	a[471,1]:=30;	a[471,2]:=1.15;	a[521,0]:=40.5;	a[521,1]:=33.5;	a[521,2]:=0.96;
a[22,0]:=14.5;	a[22,1]:=12.5;	a[22,2]:=0.59;	a[122,0]:=20;	a[122,1]:=15;	a[122,2]:=0.87;	a[222,0]:=25;	a[222,1]:=15.5;	a[222,2]:=1.34;	a[322,0]:=29.5;	a[322,1]:=20.5;	a[322,2]:=1.22;	a[422,0]:=33.5;	a[422,1]:=27;	a[422,2]:=0.91;	a[72,0]:=17;	a[72,1]:=14;	a[72,2]:=0.67;	a[172,0]:=22;	a[172,1]:=17.5;	a[172,2]:=0.75;	a[272,0]:=27;	a[272,1]:=17.5;	a[272,2]:=1.31;	a[372,0]:=31.5;	a[372,1]:=23.5;	a[372,2]:=1.08;	a[472,0]:=38;	a[472,1]:=30;	a[472,2]:=1.1;	a[522,0]:=40;	a[522,1]:=33.5;	a[522,2]:=0.91;
a[23,0]:=14;	a[23,1]:=12.5;	a[23,2]:=0.54;	a[123,0]:=20;	a[123,1]:=15.5;	a[123,2]:=0.86;	a[223,0]:=25.5;	a[223,1]:=16;	a[223,2]:=1.34;	a[323,0]:=29;	a[323,1]:=20.5;	a[323,2]:=1.17;	a[423,0]:=33;	a[423,1]:=27;	a[423,2]:=0.85;	a[73,0]:=17.5;	a[73,1]:=14.5;	a[73,2]:=0.64;	a[173,0]:=22.5;	a[173,1]:=18;	a[173,2]:=0.74;	a[273,0]:=27.5;	a[273,1]:=18;	a[273,2]:=1.29;	a[373,0]:=31;	a[373,1]:=23.5;	a[373,2]:=1.03;	a[473,0]:=38.5;	a[473,1]:=30.5;	a[473,2]:=1.08;	a[523,0]:=40.5;	a[523,1]:=34;	a[523,2]:=0.91;
a[24,0]:=14.5;	a[24,1]:=13;	a[24,2]:=0.51;	a[124,0]:=20.5;	a[124,1]:=15.5;	a[124,2]:=0.79;	a[224,0]:=25;	a[224,1]:=16;	a[224,2]:=1.28;	a[324,0]:=29.5;	a[324,1]:=21;	a[324,2]:=1.17;	a[424,0]:=33.5;	a[424,1]:=27.5;	a[424,2]:=0.84;	a[74,0]:=17;	a[74,1]:=14.5;	a[74,2]:=0.57;	a[174,0]:=22;	a[174,1]:=18;	a[174,2]:=0.68;	a[274,0]:=27;	a[274,1]:=18;	a[274,2]:=1.24;	a[374,0]:=31.5;	a[374,1]:=24;	a[374,2]:=1.03;	a[474,0]:=38;	a[474,1]:=30.5;	a[474,2]:=1.03;	a[524,0]:=40;	a[524,1]:=34;	a[524,2]:=0.85;
a[25,0]:=15.5;	a[25,1]:=10;	a[25,2]:=1.39;	a[125,0]:=20.5;	a[125,1]:=16;	a[125,2]:=0.78;	a[225,0]:=25.5;	a[225,1]:=16.5;	a[225,2]:=1.24;	a[325,0]:=29;	a[325,1]:=21;	a[325,2]:=1.1;	a[425,0]:=33;	a[425,1]:=27.5;	a[425,2]:=0.8;	a[75,0]:=17.5;	a[75,1]:=15;	a[75,2]:=0.55;	a[175,0]:=22;	a[175,1]:=19;	a[175,2]:=0.51;	a[275,0]:=27.5;	a[275,1]:=18.5;	a[275,2]:=1.22;	a[375,0]:=31;	a[375,1]:=24;	a[375,2]:=0.97;	a[475,0]:=38.5;	a[475,1]:=31;	a[475,2]:=1.03;	a[525,0]:=40;	a[525,1]:=34.5;	a[525,2]:=0.8;
a[26,0]:=15;	a[26,1]:=10;	a[26,2]:=1.34;	a[126,0]:=20;	a[126,1]:=16;	a[126,2]:=0.7;	a[226,0]:=25;	a[226,1]:=16.5;	a[226,2]:=1.2;	a[326,0]:=29.5;	a[326,1]:=21.5;	a[326,2]:=1.08;	a[426,0]:=33.5;	a[426,1]:=28;	a[426,2]:=0.8;	a[76,0]:=17;	a[76,1]:=15;	a[76,2]:=0.49;	a[176,0]:=23;	a[176,1]:=13;	a[176,2]:=0.49;	a[276,0]:=27;	a[276,1]:=18.5;	a[276,2]:=1.17;	a[376,0]:=31.5;	a[376,1]:=24.5;	a[376,2]:=0.96;	a[476,0]:=38;	a[476,1]:=31;	a[476,2]:=0.97;	a[526,0]:=40.5;	a[526,1]:=34.5;	a[526,2]:=0.84;
a[27,0]:=15.5;	a[27,1]:=10.5;	a[27,2]:=1.27;	a[127,0]:=20.5;	a[127,1]:=16.5;	a[127,2]:=0.7;	a[227,0]:=25.5;	a[227,1]:=17;	a[227,2]:=1.2;	a[327,0]:=29;	a[327,1]:=21.5;	a[327,2]:=1.03;	a[427,0]:=33;	a[427,1]:=28;	a[427,2]:=0.74;	a[77,0]:=17.5;	a[77,1]:=15.5;	a[77,2]:=0.47;	a[177,0]:=23.5;	a[177,1]:=13.5;	a[177,2]:=1.46;	a[277,0]:=27.5;	a[277,1]:=19;	a[277,2]:=1.17;	a[377,0]:=31;	a[377,1]:=24.5;	a[377,2]:=0.91;	a[477,0]:=38.5;	a[477,1]:=31.5;	a[477,2]:=0.96;	a[527,0]:=40;	a[527,1]:=34.5;	a[527,2]:=0.8;
a[28,0]:=15;	a[28,1]:=10.5;	a[28,2]:=1.17;	a[128,0]:=20;	a[128,1]:=16.5;	a[128,2]:=0.62;	a[228,0]:=25;	a[228,1]:=17;	a[228,2]:=1.13;	a[328,0]:=29.5;	a[328,1]:=22;	a[328,2]:=1.03;	a[428,0]:=33.5;	a[428,1]:=28.5;	a[428,2]:=0.74;	a[78,0]:=17;	a[78,1]:=15.5;	a[78,2]:=0.38;	a[178,0]:=23;	a[178,1]:=13.5;	a[178,2]:=1.43;	a[278,0]:=27;	a[278,1]:=19;	a[278,2]:=1.12;	a[378,0]:=31.5;	a[378,1]:=25;	a[378,2]:=0.91;	a[478,0]:=38;	a[478,1]:=31.5;	a[478,2]:=0.91;	a[528,0]:=40.5;	a[528,1]:=35;	a[528,2]:=0.8;
a[29,0]:=15.5;	a[29,1]:=11;	a[29,2]:=1.12;	a[129,0]:=20.5;	a[129,1]:=17;	a[129,2]:=0.61;	a[229,0]:=25.5;	a[229,1]:=17.5;	a[229,2]:=1.12;	a[329,0]:=29;	a[329,1]:=22;	a[329,2]:=0.97;	a[429,0]:=34;	a[429,1]:=24;	a[429,2]:=1.37;	a[79,0]:=18;	a[79,1]:=12;	a[79,2]:=1.17;	a[179,0]:=23.5;	a[179,1]:=14;	a[179,2]:=1.39;	a[279,0]:=27.5;	a[279,1]:=19.5;	a[279,2]:=1.1;	a[379,0]:=31;	a[379,1]:=25;	a[379,2]:=0.85;	a[479,0]:=38.5;	a[479,1]:=32;	a[479,2]:=0.91;	a[529,0]:=40;	a[529,1]:=35;	a[529,2]:=0.74;
a[30,0]:=15;	a[30,1]:=11;	a[30,2]:=1.07;	a[130,0]:=20;	a[130,1]:=17;	a[130,2]:=0.54;	a[230,0]:=25.5;	a[230,1]:=18.5;	a[230,2]:=0.99;	a[330,0]:=29.5;	a[330,1]:=22.5;	a[330,2]:=0.96;	a[430,0]:=34.5;	a[430,1]:=24.5;	a[430,2]:=1.34;	a[80,0]:=18.5;	a[80,1]:=12.5;	a[80,2]:=1.12;	a[180,0]:=23;	a[180,1]:=14;	a[180,2]:=1.31;	a[280,0]:=27;	a[280,1]:=19.5;	a[280,2]:=1.05;	a[380,0]:=31.5;	a[380,1]:=25.5;	a[380,2]:=0.84;	a[480,0]:=38;	a[480,1]:=32;	a[480,2]:=0.85;	a[530,0]:=40.5;	a[530,1]:=35.5;	a[530,2]:=0.74;
a[31,0]:=15.5;	a[31,1]:=11.5;	a[31,2]:=1.01;	a[131,0]:=20.5;	a[131,1]:=17.5;	a[131,2]:=0.53;	a[231,0]:=25;	a[231,1]:=18.5;	a[231,2]:=0.95;	a[331,0]:=29;	a[331,1]:=22.5;	a[331,2]:=0.92;	a[431,0]:=34;	a[431,1]:=24.5;	a[431,2]:=1.29;	a[81,0]:=18;	a[81,1]:=12.5;	a[81,2]:=1.08;	a[181,0]:=23.5;	a[181,1]:=14.5;	a[181,2]:=1.29;	a[281,0]:=27.5;	a[281,1]:=20;	a[281,2]:=1.03;	a[381,0]:=31;	a[381,1]:=25.5;	a[381,2]:=0.8;	a[481,0]:=38.5;	a[481,1]:=32.5;	a[481,2]:=0.84;	a[531,0]:=20;	a[531,1]:=14;	a[531,2]:=1;
a[32,0]:=15;	a[32,1]:=11.5;	a[32,2]:=0.95;	a[132,0]:=20;	a[132,1]:=17.5;	a[132,2]:=0.47;	a[232,0]:=25.5;	a[232,1]:=19;	a[232,2]:=0.93;	a[332,0]:=29.5;	a[332,1]:=23;	a[332,2]:=0.91;	a[432,0]:=34.5;	a[432,1]:=25;	a[432,2]:=1.29;	a[82,0]:=185;	a[82,1]:=13;	a[82,2]:=1.05;	a[182,0]:=23;	a[182,1]:=14.5;	a[182,2]:=1.24;	a[282,0]:=27;	a[282,1]:=20;	a[282,2]:=0.99;	a[382,0]:=31.5;	a[382,1]:=26;	a[382,2]:=0.8;	a[482,0]:=38;	a[482,1]:=32.5;	a[482,2]:=0.8;
a[33,0]:=15.5;	a[33,1]:=12;	a[33,2]:=0.89;	a[133,0]:=20.5;	a[133,1]:=18;	a[133,2]:=0.43;	a[233,0]:=25;	a[233,1]:=19;	a[233,2]:=0.89;	a[333,0]:=29;	a[333,1]:=23;	a[333,2]:=0.85;	a[433,0]:=34;	a[433,1]:=25;	a[433,2]:=1.22;	a[83,0]:=18;	a[83,1]:=13;	a[83,2]:=1;	a[183,0]:=23.5;	a[183,1]:=15;	a[183,2]:=1.22;	a[283,0]:=27.5;	a[283,1]:=20.5;	a[283,2]:=0.97;	a[383,0]:=31;	a[383,1]:=26;	a[383,2]:=0.74;	a[483,0]:=38.5;	a[483,1]:=33;	a[483,2]:=0.8;
a[34,0]:=15;	a[34,1]:=12;	a[34,2]:=0.82;	a[134,0]:=20;	a[134,1]:=18;	a[134,2]:=0.41;	a[234,0]:=25.8;	a[234,1]:=19.5;	a[234,2]:=0.88;	a[334,0]:=29;	a[334,1]:=23.5;	a[334,2]:=0.8;	a[434,0]:=34.5;	a[434,1]:=25.5;	a[434,2]:=1.2;	a[84,0]:=18.5;	a[84,1]:=13.5;	a[84,2]:=0.96;	a[184,0]:=23;	a[184,1]:=15;	a[184,2]:=1.17;	a[284,0]:=27;	a[284,1]:=20.5;	a[284,2]:=0.92;	a[384,0]:=31.5;	a[384,1]:=26.5;	a[384,2]:=0.74;	a[484,0]:=38;	a[484,1]:=33;	a[484,2]:=0.74;
a[35,0]:=15.5;	a[35,1]:=12.5;	a[35,2]:=0.78;	a[135,0]:=20.5;	a[135,1]:=18.5;	a[135,2]:=0.39;	a[235,0]:=25;	a[235,1]:=19.5;	a[235,2]:=0.84;	a[335,0]:=29.5;	a[335,1]:=24;	a[335,2]:=0.8;	a[435,0]:=34;	a[435,1]:=25.5;	a[435,2]:=1.15;	a[85,0]:=18;	a[85,1]:=13.5;	a[85,2]:=0.83;	a[185,0]:=23.5;	a[185,1]:=15.5;	a[185,2]:=1.15;	a[285,0]:=27;	a[285,1]:=21;	a[285,2]:=0.87;	a[385,0]:=32.5;	a[385,1]:=22;	a[385,2]:=1.37;	a[485,0]:=38.5;	a[485,1]:=33.5;	a[485,2]:=0.74;
a[36,0]:=15;	a[36,1]:=12.5;	a[36,2]:=0.7;	a[136,0]:=21;	a[136,1]:=13;	a[136,2]:=1.24;	a[236,0]:=25.5;	a[236,1]:=20;	a[236,2]:=0.82;	a[336,0]:=29;	a[336,1]:=24;	a[336,2]:=0.74;	a[436,0]:=34.5;	a[436,1]:=26;	a[436,2]:=1.15;	a[86,0]:=18.5;	a[86,1]:=14;	a[86,2]:=0.86;	a[186,0]:=23;	a[186,1]:=15.5;	a[186,2]:=1.12;	a[286,0]:=27.5;	a[286,1]:=21;	a[286,2]:=0.92;	a[386,0]:=32.5;	a[386,1]:=22.5;	a[386,2]:=1.34;	a[486,0]:=39;	a[486,1]:=29;	a[486,2]:=1.37;
a[37,0]:=15.5;	a[37,1]:=13;	a[37,2]:=0.66;	a[137,0]:=21.5;	a[137,1]:=13.5;	a[137,2]:=1.22;	a[237,0]:=25;	a[237,1]:=20;	a[237,2]:=0.78;	a[337,0]:=29.5;	a[337,1]:=24.5;	a[337,2]:=0.74;	a[437,0]:=34.5;	a[437,1]:=26.5;	a[437,2]:=1.08;	a[87,0]:=18;	a[87,1]:=14;	a[87,2]:=0.8;	a[187,0]:=23.5;	a[187,1]:=16;	a[187,2]:=1.1;	a[287,0]:=27.5;	a[287,1]:=21.5;	a[287,2]:=0.86;	a[387,0]:=32;	a[387,1]:=22.5;	a[387,2]:=1.29;	a[487,0]:=39.5;	a[487,1]:=29.5;	a[487,2]:=1.34;
a[38,0]:=15;	a[38,1]:=13;	a[38,2]:=0.6;	a[138,0]:=21;	a[138,1]:=13.5;	a[138,2]:=1.17;	a[238,0]:=26.5;	a[238,1]:=20.5;	a[238,2]:=0.77;	a[338,0]:=29;	a[338,1]:=24.5;	a[338,2]:=0.69;	a[438,0]:=34.5;	a[438,1]:=26.5;	a[438,2]:=1.08;	a[88,0]:=18.5;	a[88,1]:=14.5;	a[88,2]:=0.78;	a[188,0]:=23;	a[188,1]:=16;	a[188,2]:=1.05;	a[288,0]:=27;	a[288,1]:=21.5;	a[288,2]:=0.82;	a[388,0]:=32.5;	a[388,1]:=23;	a[388,2]:=1.29;	a[488,0]:=39;	a[488,1]:=29.5;	a[488,2]:=1.29;
a[39,0]:=15.5;	a[39,1]:=13.5;	a[39,2]:=0.57;	a[139,0]:=21.5;	a[139,1]:=14;	a[139,2]:=1.15;	a[239,0]:=25;	a[239,1]:=20.5;	a[239,2]:=0.7;	a[339,0]:=29.5;	a[339,1]:=25;	a[339,2]:=0.62;	a[439,0]:=34;	a[439,1]:=26.5;	a[439,2]:=1.03;	a[89,0]:=18;	a[89,1]:=14.5;	a[89,2]:=0.7;	a[189,0]:=23.5;	a[189,1]:=16.5;	a[189,2]:=1.03;	a[289,0]:=27.5;	a[289,1]:=22;	a[289,2]:=0.82;	a[389,0]:=32;	a[389,1]:=23;	a[389,2]:=1.29;	a[489,0]:=39.5;	a[489,1]:=30;	a[489,2]:=1.22;
a[40,0]:=15;	a[40,1]:=13.5;	a[40,2]:=0.47;	a[140,0]:=21;	a[140,1]:=14;	a[140,2]:=1.1;	a[240,0]:=26.5;	a[240,1]:=20.5;	a[240,2]:=0.7;	a[340,0]:=29.5;	a[340,1]:=25.5;	a[340,2]:=0.61;	a[440,0]:=34.5;	a[440,1]:=27;	a[440,2]:=1.03;	a[90,0]:=18.5;	a[90,1]:=15;	a[90,2]:=0.68;	a[190,0]:=23;	a[190,1]:=16.5;	a[190,2]:=0.99;	a[290,0]:=27;	a[290,1]:=22;	a[290,2]:=0.76;	a[390,0]:=32;	a[390,1]:=23;	a[390,2]:=1.22;	a[490,0]:=39;	a[490,1]:=30;	a[490,2]:=1.2;
a[41,0]:=16;	a[41,1]:=10;	a[41,2]:=1.46;	a[141,0]:=21.5;	a[141,1]:=14.5;	a[141,2]:=1.08;	a[241,0]:=25;	a[241,1]:=21;	a[241,2]:=0.64;	a[341,0]:=30;	a[341,1]:=20;	a[341,2]:=1.37;	a[441,0]:=34;	a[441,1]:=27;	a[441,2]:=0.97;	a[91,0]:=18.5;	a[91,1]:=15.5;	a[91,2]:=0.59;	a[191,0]:=23.5;	a[191,1]:=17;	a[191,2]:=0.97;	a[291,0]:=27.5;	a[291,1]:=22.5;	a[291,2]:=0.75;	a[391,0]:=32.5;	a[391,1]:=23.5;	a[391,2]:=1.2;	a[491,0]:=39.5;	a[491,1]:=30.5;	a[491,2]:=1.2;
a[42,0]:=16.5;	a[42,1]:=10.5;	a[42,2]:=1.37;	a[142,0]:=21;	a[142,1]:=14.5;	a[142,2]:=1.03;	a[242,0]:=25.5;	a[242,1]:=21.5;	a[242,2]:=0.63;	a[342,0]:=30.5;	a[342,1]:=20.5;	a[342,2]:=1.35;	a[442,0]:=34.5;	a[442,1]:=27.5;	a[442,2]:=0.96;	a[92,0]:=18;	a[92,1]:=15.5;	a[92,2]:=0.53;	a[192,0]:=23;	a[192,1]:=17;	a[192,2]:=0.93;	a[292,0]:=27;	a[292,1]:=22.5;	a[292,2]:=0.69;	a[392,0]:=32.5;	a[392,1]:=23.5;	a[392,2]:=1.15;	a[492,0]:=39;	a[492,1]:=30.5;	a[492,2]:=1.15;
a[43,0]:=16;	a[43,1]:=10.5;	a[43,2]:=1.31;	a[143,0]:=21;	a[143,1]:=15.5;	a[143,2]:=0.92;	a[243,0]:=25;	a[243,1]:=21.5;	a[243,2]:=0.54;	a[343,0]:=30;	a[343,1]:=20.5;	a[343,2]:=1.29;	a[443,0]:=34;	a[443,1]:=27.5;	a[443,2]:=0.91;	a[93,0]:=18.5;	a[93,1]:=16;	a[93,2]:=0.46;	a[193,0]:=23.5;	a[193,1]:=17.5;	a[193,2]:=0.92;	a[293,0]:=28;	a[293,1]:=18;	a[293,2]:=1.37;	a[393,0]:=32.5;	a[393,1]:=24;	a[393,2]:=1.15;	a[493,0]:=39.5;	a[493,1]:=31;	a[493,2]:=1.15;
a[44,0]:=16.5;	a[44,1]:=11;	a[44,2]:=1.27;	a[144,0]:=21.5;	a[144,1]:=16;	a[144,2]:=0.91;	a[244,0]:=26;	a[244,1]:=16;	a[244,2]:=1.39;	a[344,0]:=30.5;	a[344,1]:=21;	a[344,2]:=1.29;	a[444,0]:=34.5;	a[444,1]:=28;	a[444,2]:=0.91;	a[94,0]:=18;	a[94,1]:=16;	a[94,2]:=0.46;	a[194,0]:=23;	a[194,1]:=17.5;	a[194,2]:=0.87;	a[294,0]:=28.5;	a[294,1]:=18.5;	a[294,2]:=1.34;	a[394,0]:=32;	a[394,1]:=24;	a[394,2]:=1.1;	a[494,0]:=39;	a[494,1]:=31;	a[494,2]:=1.1;
a[45,0]:=16;	a[45,1]:=11;	a[45,2]:=1.2;	a[145,0]:=21;	a[145,1]:=16;	a[145,2]:=0.85;	a[245,0]:=26.5;	a[245,1]:=16.5;	a[245,2]:=1.37;	a[345,0]:=30;	a[345,1]:=21;	a[345,2]:=1.22;	a[445,0]:=34;	a[445,1]:=28;	a[445,2]:=0.85;	a[95,0]:=18.5;	a[95,1]:=16.5;	a[95,2]:=0.44;	a[195,0]:=23.5;	a[195,1]:=18;	a[195,2]:=0.86;	a[295,0]:=28;	a[295,1]:=18.5;	a[295,2]:=1.29;	a[395,0]:=32.5;	a[395,1]:=24.5;	a[395,2]:=1.08;	a[495,0]:=39.5;	a[495,1]:=31.5;	a[495,2]:=1.08;
a[46,0]:=16.5;	a[46,1]:=11.5;	a[46,2]:=1.13;	a[146,0]:=21.5;	a[146,1]:=16.5;	a[146,2]:=0.84;	a[246,0]:=26;	a[246,1]:=16.5;	a[246,2]:=1.34;	a[346,0]:=30.5;	a[346,1]:=21.5;	a[346,2]:=1.2;	a[446,0]:=34.5;	a[446,1]:=28.5;	a[446,2]:=0.84;	a[96,0]:=18;	a[96,1]:=16.5;	a[96,2]:=0.35;	a[196,0]:=23;	a[196,1]:=18;	a[196,2]:=0.8;	a[296,0]:=28.5;	a[296,1]:=19;	a[296,2]:=1.29;	a[396,0]:=32;	a[396,1]:=24.5;	a[396,2]:=1.03;	a[496,0]:=39;	a[496,1]:=31.5;	a[496,2]:=1.03;
a[47,0]:=16;	a[47,1]:=11.5;	a[47,2]:=1.07;	a[147,0]:=21;	a[147,1]:=16.5;	a[147,2]:=0.77;	a[247,0]:=26.5;	a[247,1]:=17;	a[247,2]:=1.31;	a[347,0]:=30;	a[347,1]:=21.5;	a[347,2]:=1.15;	a[447,0]:=34;	a[447,1]:=28.5;	a[447,2]:=0.8;	a[97,0]:=19;	a[97,1]:=13;	a[97,2]:=1.08;	a[197,0]:=23.5;	a[197,1]:=18.5;	a[197,2]:=0.8;	a[297,0]:=28;	a[297,1]:=19;	a[297,2]:=1.24;	a[397,0]:=32.5;	a[397,1]:=25;	a[397,2]:=1.03;	a[497,0]:=39.5;	a[497,1]:=32;	a[497,2]:=1.03;
a[48,0]:=16.5;	a[48,1]:=12;	a[48,2]:=1.01;	a[148,0]:=21.5;	a[148,1]:=17;	a[148,2]:=0.76;	a[248,0]:=26;	a[248,1]:=17;	a[248,2]:=1.27;	a[348,0]:=30.5;	a[348,1]:=22;	a[348,2]:=1.15;	a[448,0]:=34.5;	a[448,1]:=29;	a[448,2]:=0.8;	a[98,0]:=19.5;	a[98,1]:=13.5;	a[98,2]:=1.05;	a[198,0]:=23;	a[198,1]:=18.5;	a[198,2]:=0.74;	a[298,0]:=28.5;	a[298,1]:=19.5;	a[298,2]:=1.22;	a[398,0]:=32;	a[398,1]:=25;	a[398,2]:=0.97;	a[498,0]:=39;	a[498,1]:=32;	a[498,2]:=0.97;
a[49,0]:=16;	a[49,1]:=12;	a[49,2]:=0.96;	a[149,0]:=21;	a[149,1]:=17;	a[149,2]:=0.69;	a[249,0]:=26.5;	a[249,1]:=17.5;	a[249,2]:=1.24;	a[349,0]:=30;	a[349,1]:=22;	a[349,2]:=1.1;	a[449,0]:=34;	a[449,1]:=29;	a[449,2]:=0.74;	a[99,0]:=19;	a[99,1]:=13.5;	a[99,2]:=1;	a[199,0]:=23.5;	a[199,1]:=19;	a[199,2]:=0.73;	a[299,0]:=28;	a[299,1]:=19.6;	a[299,2]:=1.17;	a[399,0]:=32.5;	a[399,1]:=25.5;	a[399,2]:=0.96;	a[499,0]:=39.5;	a[499,1]:=32.5;	a[499,2]:=0.96;
a[50,0]:=16.5;	a[50,1]:=12.5;	a[50,2]:=0.92;	a[150,0]:=21.5;	a[150,1]:=17.5;	a[150,2]:=0.68;	a[250,0]:=26;	a[250,1]:=17.5;	a[250,2]:=1.17;	a[350,0]:=30.5;	a[350,1]:=22.5;	a[350,2]:=1.08;	a[450,0]:=34.5;	a[450,1]:=29.5;	a[450,2]:=0.74;	a[100,0]:=19.5;	a[100,1]:=14;	a[100,2]:=0.97;	a[200,0]:=24.5;	a[200,1]:=17;	a[200,2]:=1.08;	a[300,0]:=28;	a[300,1]:=20;	a[300,2]:=1.12;	a[400,0]:=32;	a[400,1]:=25.5;	a[400,2]:=0.91;	a[500,0]:=39;	a[500,1]:=32.5;	a[500,2]:=0.91;

end;




procedure TForm1.btn1Click(Sender: TObject);
var
 i, n, j, propusk :Integer;
masa, w1, w2, delta_w, delta_w_max, k, power : Extended;

begin

 begin     // �������� ������� �� ������
   with strngrd1 do
    for i:=1 to 9 do  //��������� ������� �� �������
     for j:=1 to 7 do
      begin
        Cells[i,j]:='';
      end;

  for i:=0 to 6 do
    for j:=0 to 6 do
      b[i,j]:=0;
   end;

 propusk:= 1;
     if (Length(Edt1.Text) = 0) Or (Length(Edt2.Text) = 0) Or (Length(Edt3.Text) = 0) Or(Length(Edt4.Text) = 0) then
     begin      // �������� ���������� �������� �����
     ShowMessage('������ ������� ����.');
     exit;
     end;

    begin
      try
      w1:=StrToFloat(edt1.Text);
      w2:=StrToFloat(edt2.Text);
      masa:= StrToFloat(edt4.Text);
      power:= StrToFloat(edt3.Text);
      except  // ������� ������������ ���� �����
      on EConvertError do
      MessageDlg('����c������ ����� �����!', mtError, [mbOk], 0) ;
      end;
    if w1 < w2  then
        Begin
        MessageDlg('ʳ����� ������� �������� ���������!', mtError, [mbOk], 0);
        Exit;
        end;

    delta_w_max:= 6; // ��� ����� ������� 6 % �� ���� �������
     if  ComboBox1.ItemIndex = 7 then delta_w_max:= 8; // �� 1 ������� 8% ��� ��������� �������
     if  ComboBox1.ItemIndex = 12 then delta_w_max:= 3; // ���

     delta_w:= w1-w2;
     for n:= 1 to 5 do // ������� ��������
      begin
      if  (delta_w_max) >= (delta_w/n) then Break;
      end;

    b[3,0]:= masa; // ��������� ����
    b[2,0]:= w1;

  for j := 1 to n do     /// ����� ��������
   begin
      b[1,j]:= (Round(b[2,j-1] * 2 ))/2; //���������� �� 0,5%  ��������� ��������
      if  j = n then b[2,j]:= w2 else b[2,j]:= (Round((b[1,j]-(delta_w /n))* 2 ))/2;  //������ ��������

      For i:= 0 to 51 do // ����� ����������� ����������� ������ ����� �� ������ �������
      begin
        if  (ComboBox1.ItemIndex = t[i,0]) and (t[i,1] < b[1,j]) and (t[i,2] >= b[1,j])and ( propusk = t[i,3])  then
        begin  //  � ��������         ��������� �� ����������� ��������
          strngrd1.Cells[5,j]:= FloatToStr(t[i,4]); //����������� ����������� ����� �����
          strngrd1.Cells[6,j]:= FloatToStr(t[i,5]); //����������� ����������� ��
          strngrd1.Cells[7,j]:= FloatToStr(t[i,6]);
          strngrd1.Cells[8,j]:= FloatToStr(t[i,7]);
          propusk:= 2;
          Break;
          end;
      end;

    begin

     for i:= 0 to 531 do // ����� ���������� ����������� � ������ ����
      if (a[i, 0] = b[1,j]) and (a[i, 1] = b[2,j])  then
       k:=a[i,2];
      b[3,j]:= (Round ( ((100-b[1,j])* b[3,(j-1)]) / (100 - b[2,j])*100 ))/ 100; // ���� ���� �������, ������������ �� �����
         b[5,j]:= (Round (  b [3,(j-1)]* k / kk [ComboBox1.ItemIndex] * 100)) / 100; //������ ����
         b[4,j]:= (Round (  b [3,(j-1)]* k / kk [ComboBox1.ItemIndex] / power * 10)) / 10;   //��� = ���� * � *kk / ����������, ������������ �� �������
      strngrd1.Cells[1,j]:= FloatToStr(b[1,j]);//�������� �� �������
      strngrd1.Cells[2,j]:= FloatToStr(b[2,j]);//�������� ���� �������
      strngrd1.Cells[2,6]:= FloatToStr(b[2,j]);//�������� ���� �������
      strngrd1.Cells[3,j]:= FloatToStr(b[3,j]); // ���� ���� �������
      strngrd1.Cells[3,6]:= FloatToStr(b[3,j]); // ���� ���� �������
      strngrd1.Cells[4,j]:= FloatToStr(b[4,j]); // ���������
      b[4,6]:= b[4,6]+ b[4,j];//���������
      strngrd1.Cells[9,j]:= FloatToStr(b[5,j]);// �������� ���
      b[5,6]:= b[5,6]+ b[5,j];

      end;
    End;
    strngrd1.Cells[9,6]:= FloatToStr(b[5,6]); //����� �������� ���
    strngrd1.Cells[4,6]:= FloatToStr(b[4,6]); //���������
    strngrd1.Cells[1,6]:= FloatToStr(b[1,1]);//�������� �� �������
 End;

end;

end.
