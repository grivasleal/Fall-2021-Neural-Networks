НЛ!
а∞
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ъ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Ј—8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ЫС
И
conv2d_1199/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_1199/kernel
Б
&conv2d_1199/kernel/Read/ReadVariableOpReadVariableOpconv2d_1199/kernel*&
_output_shapes
: *
dtype0
x
conv2d_1199/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_1199/bias
q
$conv2d_1199/bias/Read/ReadVariableOpReadVariableOpconv2d_1199/bias*
_output_shapes
: *
dtype0
Ф
batch_normalization_1248/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name batch_normalization_1248/gamma
Н
2batch_normalization_1248/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1248/gamma*
_output_shapes
: *
dtype0
Т
batch_normalization_1248/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_1248/beta
Л
1batch_normalization_1248/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1248/beta*
_output_shapes
: *
dtype0
†
$batch_normalization_1248/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$batch_normalization_1248/moving_mean
Щ
8batch_normalization_1248/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1248/moving_mean*
_output_shapes
: *
dtype0
®
(batch_normalization_1248/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(batch_normalization_1248/moving_variance
°
<batch_normalization_1248/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1248/moving_variance*
_output_shapes
: *
dtype0
И
conv2d_1200/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *#
shared_nameconv2d_1200/kernel
Б
&conv2d_1200/kernel/Read/ReadVariableOpReadVariableOpconv2d_1200/kernel*&
_output_shapes
:  *
dtype0
x
conv2d_1200/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_1200/bias
q
$conv2d_1200/bias/Read/ReadVariableOpReadVariableOpconv2d_1200/bias*
_output_shapes
: *
dtype0
Ф
batch_normalization_1249/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name batch_normalization_1249/gamma
Н
2batch_normalization_1249/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1249/gamma*
_output_shapes
: *
dtype0
Т
batch_normalization_1249/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_1249/beta
Л
1batch_normalization_1249/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1249/beta*
_output_shapes
: *
dtype0
†
$batch_normalization_1249/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$batch_normalization_1249/moving_mean
Щ
8batch_normalization_1249/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1249/moving_mean*
_output_shapes
: *
dtype0
®
(batch_normalization_1249/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(batch_normalization_1249/moving_variance
°
<batch_normalization_1249/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1249/moving_variance*
_output_shapes
: *
dtype0
И
conv2d_1201/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_1201/kernel
Б
&conv2d_1201/kernel/Read/ReadVariableOpReadVariableOpconv2d_1201/kernel*&
_output_shapes
: @*
dtype0
x
conv2d_1201/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_1201/bias
q
$conv2d_1201/bias/Read/ReadVariableOpReadVariableOpconv2d_1201/bias*
_output_shapes
:@*
dtype0
Ф
batch_normalization_1250/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name batch_normalization_1250/gamma
Н
2batch_normalization_1250/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1250/gamma*
_output_shapes
:@*
dtype0
Т
batch_normalization_1250/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_1250/beta
Л
1batch_normalization_1250/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1250/beta*
_output_shapes
:@*
dtype0
†
$batch_normalization_1250/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$batch_normalization_1250/moving_mean
Щ
8batch_normalization_1250/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1250/moving_mean*
_output_shapes
:@*
dtype0
®
(batch_normalization_1250/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(batch_normalization_1250/moving_variance
°
<batch_normalization_1250/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1250/moving_variance*
_output_shapes
:@*
dtype0
И
conv2d_1202/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_nameconv2d_1202/kernel
Б
&conv2d_1202/kernel/Read/ReadVariableOpReadVariableOpconv2d_1202/kernel*&
_output_shapes
:@@*
dtype0
x
conv2d_1202/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_1202/bias
q
$conv2d_1202/bias/Read/ReadVariableOpReadVariableOpconv2d_1202/bias*
_output_shapes
:@*
dtype0
Ф
batch_normalization_1251/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name batch_normalization_1251/gamma
Н
2batch_normalization_1251/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1251/gamma*
_output_shapes
:@*
dtype0
Т
batch_normalization_1251/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_1251/beta
Л
1batch_normalization_1251/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1251/beta*
_output_shapes
:@*
dtype0
†
$batch_normalization_1251/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$batch_normalization_1251/moving_mean
Щ
8batch_normalization_1251/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1251/moving_mean*
_output_shapes
:@*
dtype0
®
(batch_normalization_1251/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(batch_normalization_1251/moving_variance
°
<batch_normalization_1251/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1251/moving_variance*
_output_shapes
:@*
dtype0
~
dense_150/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А А*!
shared_namedense_150/kernel
w
$dense_150/kernel/Read/ReadVariableOpReadVariableOpdense_150/kernel* 
_output_shapes
:
А А*
dtype0
u
dense_150/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_150/bias
n
"dense_150/bias/Read/ReadVariableOpReadVariableOpdense_150/bias*
_output_shapes	
:А*
dtype0
Х
batch_normalization_1252/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name batch_normalization_1252/gamma
О
2batch_normalization_1252/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1252/gamma*
_output_shapes	
:А*
dtype0
У
batch_normalization_1252/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namebatch_normalization_1252/beta
М
1batch_normalization_1252/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1252/beta*
_output_shapes	
:А*
dtype0
°
$batch_normalization_1252/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$batch_normalization_1252/moving_mean
Ъ
8batch_normalization_1252/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1252/moving_mean*
_output_shapes	
:А*
dtype0
©
(batch_normalization_1252/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(batch_normalization_1252/moving_variance
Ґ
<batch_normalization_1252/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1252/moving_variance*
_output_shapes	
:А*
dtype0
}
dense_151/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*!
shared_namedense_151/kernel
v
$dense_151/kernel/Read/ReadVariableOpReadVariableOpdense_151/kernel*
_output_shapes
:	А
*
dtype0
t
dense_151/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_151/bias
m
"dense_151/bias/Read/ReadVariableOpReadVariableOpdense_151/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_1199/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1199/kernel/m
П
-Adam/conv2d_1199/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1199/kernel/m*&
_output_shapes
: *
dtype0
Ж
Adam/conv2d_1199/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1199/bias/m

+Adam/conv2d_1199/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1199/bias/m*
_output_shapes
: *
dtype0
Ґ
%Adam/batch_normalization_1248/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1248/gamma/m
Ы
9Adam/batch_normalization_1248/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1248/gamma/m*
_output_shapes
: *
dtype0
†
$Adam/batch_normalization_1248/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1248/beta/m
Щ
8Adam/batch_normalization_1248/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1248/beta/m*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_1200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdam/conv2d_1200/kernel/m
П
-Adam/conv2d_1200/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1200/kernel/m*&
_output_shapes
:  *
dtype0
Ж
Adam/conv2d_1200/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1200/bias/m

+Adam/conv2d_1200/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1200/bias/m*
_output_shapes
: *
dtype0
Ґ
%Adam/batch_normalization_1249/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1249/gamma/m
Ы
9Adam/batch_normalization_1249/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1249/gamma/m*
_output_shapes
: *
dtype0
†
$Adam/batch_normalization_1249/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1249/beta/m
Щ
8Adam/batch_normalization_1249/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1249/beta/m*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_1201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1201/kernel/m
П
-Adam/conv2d_1201/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1201/kernel/m*&
_output_shapes
: @*
dtype0
Ж
Adam/conv2d_1201/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1201/bias/m

+Adam/conv2d_1201/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1201/bias/m*
_output_shapes
:@*
dtype0
Ґ
%Adam/batch_normalization_1250/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1250/gamma/m
Ы
9Adam/batch_normalization_1250/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1250/gamma/m*
_output_shapes
:@*
dtype0
†
$Adam/batch_normalization_1250/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1250/beta/m
Щ
8Adam/batch_normalization_1250/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1250/beta/m*
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_1202/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdam/conv2d_1202/kernel/m
П
-Adam/conv2d_1202/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1202/kernel/m*&
_output_shapes
:@@*
dtype0
Ж
Adam/conv2d_1202/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1202/bias/m

+Adam/conv2d_1202/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1202/bias/m*
_output_shapes
:@*
dtype0
Ґ
%Adam/batch_normalization_1251/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1251/gamma/m
Ы
9Adam/batch_normalization_1251/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1251/gamma/m*
_output_shapes
:@*
dtype0
†
$Adam/batch_normalization_1251/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1251/beta/m
Щ
8Adam/batch_normalization_1251/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1251/beta/m*
_output_shapes
:@*
dtype0
М
Adam/dense_150/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А А*(
shared_nameAdam/dense_150/kernel/m
Е
+Adam/dense_150/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_150/kernel/m* 
_output_shapes
:
А А*
dtype0
Г
Adam/dense_150/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_150/bias/m
|
)Adam/dense_150/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_150/bias/m*
_output_shapes	
:А*
dtype0
£
%Adam/batch_normalization_1252/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%Adam/batch_normalization_1252/gamma/m
Ь
9Adam/batch_normalization_1252/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1252/gamma/m*
_output_shapes	
:А*
dtype0
°
$Adam/batch_normalization_1252/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$Adam/batch_normalization_1252/beta/m
Ъ
8Adam/batch_normalization_1252/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1252/beta/m*
_output_shapes	
:А*
dtype0
Л
Adam/dense_151/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*(
shared_nameAdam/dense_151/kernel/m
Д
+Adam/dense_151/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_151/kernel/m*
_output_shapes
:	А
*
dtype0
В
Adam/dense_151/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_151/bias/m
{
)Adam/dense_151/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_151/bias/m*
_output_shapes
:
*
dtype0
Ц
Adam/conv2d_1199/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1199/kernel/v
П
-Adam/conv2d_1199/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1199/kernel/v*&
_output_shapes
: *
dtype0
Ж
Adam/conv2d_1199/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1199/bias/v

+Adam/conv2d_1199/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1199/bias/v*
_output_shapes
: *
dtype0
Ґ
%Adam/batch_normalization_1248/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1248/gamma/v
Ы
9Adam/batch_normalization_1248/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1248/gamma/v*
_output_shapes
: *
dtype0
†
$Adam/batch_normalization_1248/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1248/beta/v
Щ
8Adam/batch_normalization_1248/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1248/beta/v*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_1200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdam/conv2d_1200/kernel/v
П
-Adam/conv2d_1200/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1200/kernel/v*&
_output_shapes
:  *
dtype0
Ж
Adam/conv2d_1200/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1200/bias/v

+Adam/conv2d_1200/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1200/bias/v*
_output_shapes
: *
dtype0
Ґ
%Adam/batch_normalization_1249/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1249/gamma/v
Ы
9Adam/batch_normalization_1249/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1249/gamma/v*
_output_shapes
: *
dtype0
†
$Adam/batch_normalization_1249/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1249/beta/v
Щ
8Adam/batch_normalization_1249/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1249/beta/v*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_1201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1201/kernel/v
П
-Adam/conv2d_1201/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1201/kernel/v*&
_output_shapes
: @*
dtype0
Ж
Adam/conv2d_1201/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1201/bias/v

+Adam/conv2d_1201/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1201/bias/v*
_output_shapes
:@*
dtype0
Ґ
%Adam/batch_normalization_1250/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1250/gamma/v
Ы
9Adam/batch_normalization_1250/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1250/gamma/v*
_output_shapes
:@*
dtype0
†
$Adam/batch_normalization_1250/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1250/beta/v
Щ
8Adam/batch_normalization_1250/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1250/beta/v*
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_1202/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdam/conv2d_1202/kernel/v
П
-Adam/conv2d_1202/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1202/kernel/v*&
_output_shapes
:@@*
dtype0
Ж
Adam/conv2d_1202/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1202/bias/v

+Adam/conv2d_1202/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1202/bias/v*
_output_shapes
:@*
dtype0
Ґ
%Adam/batch_normalization_1251/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1251/gamma/v
Ы
9Adam/batch_normalization_1251/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1251/gamma/v*
_output_shapes
:@*
dtype0
†
$Adam/batch_normalization_1251/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1251/beta/v
Щ
8Adam/batch_normalization_1251/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1251/beta/v*
_output_shapes
:@*
dtype0
М
Adam/dense_150/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А А*(
shared_nameAdam/dense_150/kernel/v
Е
+Adam/dense_150/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_150/kernel/v* 
_output_shapes
:
А А*
dtype0
Г
Adam/dense_150/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/dense_150/bias/v
|
)Adam/dense_150/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_150/bias/v*
_output_shapes	
:А*
dtype0
£
%Adam/batch_normalization_1252/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%Adam/batch_normalization_1252/gamma/v
Ь
9Adam/batch_normalization_1252/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1252/gamma/v*
_output_shapes	
:А*
dtype0
°
$Adam/batch_normalization_1252/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$Adam/batch_normalization_1252/beta/v
Ъ
8Adam/batch_normalization_1252/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1252/beta/v*
_output_shapes	
:А*
dtype0
Л
Adam/dense_151/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*(
shared_nameAdam/dense_151/kernel/v
Д
+Adam/dense_151/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_151/kernel/v*
_output_shapes
:	А
*
dtype0
В
Adam/dense_151/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_151/bias/v
{
)Adam/dense_151/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_151/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
ЙЬ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*√Ы
valueЄЫBіЫ BђЫ
»
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
Ч
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
Ч
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
R
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
R
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
R
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
Ч
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[	variables
\regularization_losses
]trainable_variables
^	keras_api
h

_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
R
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
Ч
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
R
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
R
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
R
z	variables
{regularization_losses
|trainable_variables
}	keras_api
l

~kernel
bias
А	variables
Бregularization_losses
Вtrainable_variables
Г	keras_api
V
Д	variables
Еregularization_losses
Жtrainable_variables
З	keras_api
†
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Н	variables
Оregularization_losses
Пtrainable_variables
Р	keras_api
V
С	variables
Тregularization_losses
Уtrainable_variables
Ф	keras_api
n
Хkernel
	Цbias
Ч	variables
Шregularization_losses
Щtrainable_variables
Ъ	keras_api
V
Ы	variables
Ьregularization_losses
Эtrainable_variables
Ю	keras_api
Е
	Яiter
†beta_1
°beta_2

Ґdecay
£learning_ratemІm®)m©*m™1mЂ2mђ<m≠=mЃLmѓMm∞Wm±Xm≤_m≥`mіjmµkmґ~mЈmЄ	Йmє	КmЇ	Хmї	ЦmЉvљvЊ)vњ*vј1vЅ2v¬<v√=vƒLv≈Mv∆Wv«Xv»_v…`v jvЋkvћ~vЌvќ	Йvѕ	Кv–	Хv—	Цv“
ь
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
Й26
К27
Л28
М29
Х30
Ц31
 
™
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
Й18
К19
Х20
Ц21
≤
§non_trainable_variables
•metrics
¶layer_metrics
 Іlayer_regularization_losses
	variables
regularization_losses
®layers
trainable_variables
 
^\
VARIABLE_VALUEconv2d_1199/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1199/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≤
©non_trainable_variables
™layer_metrics
Ђmetrics
 ђlayer_regularization_losses
 	variables
!regularization_losses
≠layers
"trainable_variables
 
 
 
≤
Ѓnon_trainable_variables
ѓlayer_metrics
∞metrics
 ±layer_regularization_losses
$	variables
%regularization_losses
≤layers
&trainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1248/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1248/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1248/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1248/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
+2
,3
 

)0
*1
≤
≥non_trainable_variables
іlayer_metrics
µmetrics
 ґlayer_regularization_losses
-	variables
.regularization_losses
Јlayers
/trainable_variables
^\
VARIABLE_VALUEconv2d_1200/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1200/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
≤
Єnon_trainable_variables
єlayer_metrics
Їmetrics
 їlayer_regularization_losses
3	variables
4regularization_losses
Љlayers
5trainable_variables
 
 
 
≤
љnon_trainable_variables
Њlayer_metrics
њmetrics
 јlayer_regularization_losses
7	variables
8regularization_losses
Ѕlayers
9trainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1249/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1249/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1249/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1249/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
>2
?3
 

<0
=1
≤
¬non_trainable_variables
√layer_metrics
ƒmetrics
 ≈layer_regularization_losses
@	variables
Aregularization_losses
∆layers
Btrainable_variables
 
 
 
≤
«non_trainable_variables
»layer_metrics
…metrics
  layer_regularization_losses
D	variables
Eregularization_losses
Ћlayers
Ftrainable_variables
 
 
 
≤
ћnon_trainable_variables
Ќlayer_metrics
ќmetrics
 ѕlayer_regularization_losses
H	variables
Iregularization_losses
–layers
Jtrainable_variables
^\
VARIABLE_VALUEconv2d_1201/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1201/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 

L0
M1
≤
—non_trainable_variables
“layer_metrics
”metrics
 ‘layer_regularization_losses
N	variables
Oregularization_losses
’layers
Ptrainable_variables
 
 
 
≤
÷non_trainable_variables
„layer_metrics
Ўmetrics
 ўlayer_regularization_losses
R	variables
Sregularization_losses
Џlayers
Ttrainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1250/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1250/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1250/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1250/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
Y2
Z3
 

W0
X1
≤
џnon_trainable_variables
№layer_metrics
Ёmetrics
 ёlayer_regularization_losses
[	variables
\regularization_losses
яlayers
]trainable_variables
^\
VARIABLE_VALUEconv2d_1202/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1202/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1
 

_0
`1
≤
аnon_trainable_variables
бlayer_metrics
вmetrics
 гlayer_regularization_losses
a	variables
bregularization_losses
дlayers
ctrainable_variables
 
 
 
≤
еnon_trainable_variables
жlayer_metrics
зmetrics
 иlayer_regularization_losses
e	variables
fregularization_losses
йlayers
gtrainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1251/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1251/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1251/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1251/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
l2
m3
 

j0
k1
≤
кnon_trainable_variables
лlayer_metrics
мmetrics
 нlayer_regularization_losses
n	variables
oregularization_losses
оlayers
ptrainable_variables
 
 
 
≤
пnon_trainable_variables
рlayer_metrics
сmetrics
 тlayer_regularization_losses
r	variables
sregularization_losses
уlayers
ttrainable_variables
 
 
 
≤
фnon_trainable_variables
хlayer_metrics
цmetrics
 чlayer_regularization_losses
v	variables
wregularization_losses
шlayers
xtrainable_variables
 
 
 
≤
щnon_trainable_variables
ъlayer_metrics
ыmetrics
 ьlayer_regularization_losses
z	variables
{regularization_losses
эlayers
|trainable_variables
\Z
VARIABLE_VALUEdense_150/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_150/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

~0
1
 

~0
1
µ
юnon_trainable_variables
€layer_metrics
Аmetrics
 Бlayer_regularization_losses
А	variables
Бregularization_losses
Вlayers
Вtrainable_variables
 
 
 
µ
Гnon_trainable_variables
Дlayer_metrics
Еmetrics
 Жlayer_regularization_losses
Д	variables
Еregularization_losses
Зlayers
Жtrainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1252/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1252/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1252/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1252/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
Й0
К1
Л2
М3
 

Й0
К1
µ
Иnon_trainable_variables
Йlayer_metrics
Кmetrics
 Лlayer_regularization_losses
Н	variables
Оregularization_losses
Мlayers
Пtrainable_variables
 
 
 
µ
Нnon_trainable_variables
Оlayer_metrics
Пmetrics
 Рlayer_regularization_losses
С	variables
Тregularization_losses
Сlayers
Уtrainable_variables
][
VARIABLE_VALUEdense_151/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_151/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

Х0
Ц1
 

Х0
Ц1
µ
Тnon_trainable_variables
Уlayer_metrics
Фmetrics
 Хlayer_regularization_losses
Ч	variables
Шregularization_losses
Цlayers
Щtrainable_variables
 
 
 
µ
Чnon_trainable_variables
Шlayer_metrics
Щmetrics
 Ъlayer_regularization_losses
Ы	variables
Ьregularization_losses
Ыlayers
Эtrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
H
+0
,1
>2
?3
Y4
Z5
l6
m7
Л8
М9

Ь0
Э1
 
 
Ѓ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
 
 
 
 
 
 
 
 
 
 

+0
,1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

>0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

l0
m1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Л0
М1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Юtotal

Яcount
†	variables
°	keras_api
I

Ґtotal

£count
§
_fn_kwargs
•	variables
¶	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ю0
Я1

†	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ґ0
£1

•	variables
Б
VARIABLE_VALUEAdam/conv2d_1199/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1199/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1248/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1248/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1200/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1200/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1249/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1249/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1201/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1201/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1250/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1250/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1202/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1202/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1251/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1251/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_150/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_150/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1252/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1252/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/dense_151/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_151/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1199/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1199/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1248/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1248/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1200/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1200/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1249/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1249/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1201/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1201/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1250/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1250/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_1202/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1202/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1251/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1251/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_150/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_150/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE%Adam/batch_normalization_1252/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE$Adam/batch_normalization_1252/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/dense_151/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_151/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ф
!serving_default_conv2d_1199_inputPlaceholder*/
_output_shapes
:€€€€€€€€€  *
dtype0*$
shape:€€€€€€€€€  
І

StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv2d_1199_inputconv2d_1199/kernelconv2d_1199/biasbatch_normalization_1248/gammabatch_normalization_1248/beta$batch_normalization_1248/moving_mean(batch_normalization_1248/moving_varianceconv2d_1200/kernelconv2d_1200/biasbatch_normalization_1249/gammabatch_normalization_1249/beta$batch_normalization_1249/moving_mean(batch_normalization_1249/moving_varianceconv2d_1201/kernelconv2d_1201/biasbatch_normalization_1250/gammabatch_normalization_1250/beta$batch_normalization_1250/moving_mean(batch_normalization_1250/moving_varianceconv2d_1202/kernelconv2d_1202/biasbatch_normalization_1251/gammabatch_normalization_1251/beta$batch_normalization_1251/moving_mean(batch_normalization_1251/moving_variancedense_150/kerneldense_150/bias(batch_normalization_1252/moving_variancebatch_normalization_1252/gamma$batch_normalization_1252/moving_meanbatch_normalization_1252/betadense_151/kerneldense_151/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_4227729
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ж#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_1199/kernel/Read/ReadVariableOp$conv2d_1199/bias/Read/ReadVariableOp2batch_normalization_1248/gamma/Read/ReadVariableOp1batch_normalization_1248/beta/Read/ReadVariableOp8batch_normalization_1248/moving_mean/Read/ReadVariableOp<batch_normalization_1248/moving_variance/Read/ReadVariableOp&conv2d_1200/kernel/Read/ReadVariableOp$conv2d_1200/bias/Read/ReadVariableOp2batch_normalization_1249/gamma/Read/ReadVariableOp1batch_normalization_1249/beta/Read/ReadVariableOp8batch_normalization_1249/moving_mean/Read/ReadVariableOp<batch_normalization_1249/moving_variance/Read/ReadVariableOp&conv2d_1201/kernel/Read/ReadVariableOp$conv2d_1201/bias/Read/ReadVariableOp2batch_normalization_1250/gamma/Read/ReadVariableOp1batch_normalization_1250/beta/Read/ReadVariableOp8batch_normalization_1250/moving_mean/Read/ReadVariableOp<batch_normalization_1250/moving_variance/Read/ReadVariableOp&conv2d_1202/kernel/Read/ReadVariableOp$conv2d_1202/bias/Read/ReadVariableOp2batch_normalization_1251/gamma/Read/ReadVariableOp1batch_normalization_1251/beta/Read/ReadVariableOp8batch_normalization_1251/moving_mean/Read/ReadVariableOp<batch_normalization_1251/moving_variance/Read/ReadVariableOp$dense_150/kernel/Read/ReadVariableOp"dense_150/bias/Read/ReadVariableOp2batch_normalization_1252/gamma/Read/ReadVariableOp1batch_normalization_1252/beta/Read/ReadVariableOp8batch_normalization_1252/moving_mean/Read/ReadVariableOp<batch_normalization_1252/moving_variance/Read/ReadVariableOp$dense_151/kernel/Read/ReadVariableOp"dense_151/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv2d_1199/kernel/m/Read/ReadVariableOp+Adam/conv2d_1199/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1248/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1248/beta/m/Read/ReadVariableOp-Adam/conv2d_1200/kernel/m/Read/ReadVariableOp+Adam/conv2d_1200/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1249/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1249/beta/m/Read/ReadVariableOp-Adam/conv2d_1201/kernel/m/Read/ReadVariableOp+Adam/conv2d_1201/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1250/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1250/beta/m/Read/ReadVariableOp-Adam/conv2d_1202/kernel/m/Read/ReadVariableOp+Adam/conv2d_1202/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1251/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1251/beta/m/Read/ReadVariableOp+Adam/dense_150/kernel/m/Read/ReadVariableOp)Adam/dense_150/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1252/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1252/beta/m/Read/ReadVariableOp+Adam/dense_151/kernel/m/Read/ReadVariableOp)Adam/dense_151/bias/m/Read/ReadVariableOp-Adam/conv2d_1199/kernel/v/Read/ReadVariableOp+Adam/conv2d_1199/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1248/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1248/beta/v/Read/ReadVariableOp-Adam/conv2d_1200/kernel/v/Read/ReadVariableOp+Adam/conv2d_1200/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1249/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1249/beta/v/Read/ReadVariableOp-Adam/conv2d_1201/kernel/v/Read/ReadVariableOp+Adam/conv2d_1201/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1250/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1250/beta/v/Read/ReadVariableOp-Adam/conv2d_1202/kernel/v/Read/ReadVariableOp+Adam/conv2d_1202/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1251/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1251/beta/v/Read/ReadVariableOp+Adam/dense_150/kernel/v/Read/ReadVariableOp)Adam/dense_150/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1252/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1252/beta/v/Read/ReadVariableOp+Adam/dense_151/kernel/v/Read/ReadVariableOp)Adam/dense_151/bias/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_save_4229272
Ё
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_1199/kernelconv2d_1199/biasbatch_normalization_1248/gammabatch_normalization_1248/beta$batch_normalization_1248/moving_mean(batch_normalization_1248/moving_varianceconv2d_1200/kernelconv2d_1200/biasbatch_normalization_1249/gammabatch_normalization_1249/beta$batch_normalization_1249/moving_mean(batch_normalization_1249/moving_varianceconv2d_1201/kernelconv2d_1201/biasbatch_normalization_1250/gammabatch_normalization_1250/beta$batch_normalization_1250/moving_mean(batch_normalization_1250/moving_varianceconv2d_1202/kernelconv2d_1202/biasbatch_normalization_1251/gammabatch_normalization_1251/beta$batch_normalization_1251/moving_mean(batch_normalization_1251/moving_variancedense_150/kerneldense_150/biasbatch_normalization_1252/gammabatch_normalization_1252/beta$batch_normalization_1252/moving_mean(batch_normalization_1252/moving_variancedense_151/kerneldense_151/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_1199/kernel/mAdam/conv2d_1199/bias/m%Adam/batch_normalization_1248/gamma/m$Adam/batch_normalization_1248/beta/mAdam/conv2d_1200/kernel/mAdam/conv2d_1200/bias/m%Adam/batch_normalization_1249/gamma/m$Adam/batch_normalization_1249/beta/mAdam/conv2d_1201/kernel/mAdam/conv2d_1201/bias/m%Adam/batch_normalization_1250/gamma/m$Adam/batch_normalization_1250/beta/mAdam/conv2d_1202/kernel/mAdam/conv2d_1202/bias/m%Adam/batch_normalization_1251/gamma/m$Adam/batch_normalization_1251/beta/mAdam/dense_150/kernel/mAdam/dense_150/bias/m%Adam/batch_normalization_1252/gamma/m$Adam/batch_normalization_1252/beta/mAdam/dense_151/kernel/mAdam/dense_151/bias/mAdam/conv2d_1199/kernel/vAdam/conv2d_1199/bias/v%Adam/batch_normalization_1248/gamma/v$Adam/batch_normalization_1248/beta/vAdam/conv2d_1200/kernel/vAdam/conv2d_1200/bias/v%Adam/batch_normalization_1249/gamma/v$Adam/batch_normalization_1249/beta/vAdam/conv2d_1201/kernel/vAdam/conv2d_1201/bias/v%Adam/batch_normalization_1250/gamma/v$Adam/batch_normalization_1250/beta/vAdam/conv2d_1202/kernel/vAdam/conv2d_1202/bias/v%Adam/batch_normalization_1251/gamma/v$Adam/batch_normalization_1251/beta/vAdam/dense_150/kernel/vAdam/dense_150/bias/v%Adam/batch_normalization_1252/gamma/v$Adam/batch_normalization_1252/beta/vAdam/dense_151/kernel/vAdam/dense_151/bias/v*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__traced_restore_4229537Ќу
ф
’
:__inference_batch_normalization_1250_layer_call_fn_4228599

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_42260602
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Д
h
L__inference_activation_1346_layer_call_and_return_conditional_losses_4226650

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р
g
H__inference_dropout_201_layer_call_and_return_conditional_losses_4227049

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
т
’
:__inference_batch_normalization_1250_layer_call_fn_4228612

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_42261042
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ф
’
:__inference_batch_normalization_1248_layer_call_fn_4228266

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_42257962
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228703

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ќ
Ґ
-__inference_conv2d_1199_layer_call_fn_4228171

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_42264812
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
™
’
:__inference_batch_normalization_1250_layer_call_fn_4228638

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_42270022
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_4228315

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
ђ
’
:__inference_batch_normalization_1248_layer_call_fn_4228292

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_42265112
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
р
g
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228475

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ
M
1__inference_activation_1348_layer_call_fn_4228994

inputs
identityЌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1348_layer_call_and_return_conditional_losses_42267552
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4227002

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
яv
”
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227334

inputs-
conv2d_1199_4227246: !
conv2d_1199_4227248: .
 batch_normalization_1248_4227252: .
 batch_normalization_1248_4227254: .
 batch_normalization_1248_4227256: .
 batch_normalization_1248_4227258: -
conv2d_1200_4227261:  !
conv2d_1200_4227263: .
 batch_normalization_1249_4227267: .
 batch_normalization_1249_4227269: .
 batch_normalization_1249_4227271: .
 batch_normalization_1249_4227273: -
conv2d_1201_4227278: @!
conv2d_1201_4227280:@.
 batch_normalization_1250_4227284:@.
 batch_normalization_1250_4227286:@.
 batch_normalization_1250_4227288:@.
 batch_normalization_1250_4227290:@-
conv2d_1202_4227293:@@!
conv2d_1202_4227295:@.
 batch_normalization_1251_4227299:@.
 batch_normalization_1251_4227301:@.
 batch_normalization_1251_4227303:@.
 batch_normalization_1251_4227305:@%
dense_150_4227311:
А А 
dense_150_4227313:	А/
 batch_normalization_1252_4227317:	А/
 batch_normalization_1252_4227319:	А/
 batch_normalization_1252_4227321:	А/
 batch_normalization_1252_4227323:	А$
dense_151_4227327:	А

dense_151_4227329:

identityИҐ0batch_normalization_1248/StatefulPartitionedCallҐ0batch_normalization_1249/StatefulPartitionedCallҐ0batch_normalization_1250/StatefulPartitionedCallҐ0batch_normalization_1251/StatefulPartitionedCallҐ0batch_normalization_1252/StatefulPartitionedCallҐ#conv2d_1199/StatefulPartitionedCallҐ#conv2d_1200/StatefulPartitionedCallҐ#conv2d_1201/StatefulPartitionedCallҐ#conv2d_1202/StatefulPartitionedCallҐ!dense_150/StatefulPartitionedCallҐ!dense_151/StatefulPartitionedCallҐ#dropout_201/StatefulPartitionedCallҐ#dropout_202/StatefulPartitionedCallҐ#dropout_203/StatefulPartitionedCall±
#conv2d_1199/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1199_4227246conv2d_1199_4227248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_42264812%
#conv2d_1199/StatefulPartitionedCallЫ
activation_1343/PartitionedCallPartitionedCall,conv2d_1199/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1343_layer_call_and_return_conditional_losses_42264922!
activation_1343/PartitionedCallЏ
0batch_normalization_1248/StatefulPartitionedCallStatefulPartitionedCall(activation_1343/PartitionedCall:output:0 batch_normalization_1248_4227252 batch_normalization_1248_4227254 batch_normalization_1248_4227256 batch_normalization_1248_4227258*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_422714522
0batch_normalization_1248/StatefulPartitionedCallд
#conv2d_1200/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1248/StatefulPartitionedCall:output:0conv2d_1200_4227261conv2d_1200_4227263*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_42265312%
#conv2d_1200/StatefulPartitionedCallЫ
activation_1344/PartitionedCallPartitionedCall,conv2d_1200/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1344_layer_call_and_return_conditional_losses_42265422!
activation_1344/PartitionedCallЏ
0batch_normalization_1249/StatefulPartitionedCallStatefulPartitionedCall(activation_1344/PartitionedCall:output:0 batch_normalization_1249_4227267 batch_normalization_1249_4227269 batch_normalization_1249_4227271 batch_normalization_1249_4227273*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_422708522
0batch_normalization_1249/StatefulPartitionedCallЃ
!max_pooling2d_192/PartitionedCallPartitionedCall9batch_normalization_1249/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_42260322#
!max_pooling2d_192/PartitionedCall•
#dropout_201/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42270492%
#dropout_201/StatefulPartitionedCall„
#conv2d_1201/StatefulPartitionedCallStatefulPartitionedCall,dropout_201/StatefulPartitionedCall:output:0conv2d_1201_4227278conv2d_1201_4227280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_42265892%
#conv2d_1201/StatefulPartitionedCallЫ
activation_1345/PartitionedCallPartitionedCall,conv2d_1201/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1345_layer_call_and_return_conditional_losses_42266002!
activation_1345/PartitionedCallЏ
0batch_normalization_1250/StatefulPartitionedCallStatefulPartitionedCall(activation_1345/PartitionedCall:output:0 batch_normalization_1250_4227284 batch_normalization_1250_4227286 batch_normalization_1250_4227288 batch_normalization_1250_4227290*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_422700222
0batch_normalization_1250/StatefulPartitionedCallд
#conv2d_1202/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1250/StatefulPartitionedCall:output:0conv2d_1202_4227293conv2d_1202_4227295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_42266392%
#conv2d_1202/StatefulPartitionedCallЫ
activation_1346/PartitionedCallPartitionedCall,conv2d_1202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1346_layer_call_and_return_conditional_losses_42266502!
activation_1346/PartitionedCallЏ
0batch_normalization_1251/StatefulPartitionedCallStatefulPartitionedCall(activation_1346/PartitionedCall:output:0 batch_normalization_1251_4227299 batch_normalization_1251_4227301 batch_normalization_1251_4227303 batch_normalization_1251_4227305*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_422694222
0batch_normalization_1251/StatefulPartitionedCallЃ
!max_pooling2d_193/PartitionedCallPartitionedCall9batch_normalization_1251/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_42262962#
!max_pooling2d_193/PartitionedCallЋ
#dropout_202/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0$^dropout_201/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42269062%
#dropout_202/StatefulPartitionedCallЕ
flatten_97/PartitionedCallPartitionedCall,dropout_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_97_layer_call_and_return_conditional_losses_42266932
flatten_97/PartitionedCallљ
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_97/PartitionedCall:output:0dense_150_4227311dense_150_4227313*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_42267052#
!dense_150/StatefulPartitionedCallТ
activation_1347/PartitionedCallPartitionedCall*dense_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1347_layer_call_and_return_conditional_losses_42267162!
activation_1347/PartitionedCall”
0batch_normalization_1252/StatefulPartitionedCallStatefulPartitionedCall(activation_1347/PartitionedCall:output:0 batch_normalization_1252_4227317 batch_normalization_1252_4227319 batch_normalization_1252_4227321 batch_normalization_1252_4227323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_422638622
0batch_normalization_1252/StatefulPartitionedCall”
#dropout_203/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1252/StatefulPartitionedCall:output:0$^dropout_202/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42268612%
#dropout_203/StatefulPartitionedCall≈
!dense_151/StatefulPartitionedCallStatefulPartitionedCall,dropout_203/StatefulPartitionedCall:output:0dense_151_4227327dense_151_4227329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_42267442#
!dense_151/StatefulPartitionedCallС
activation_1348/PartitionedCallPartitionedCall*dense_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1348_layer_call_and_return_conditional_losses_42267552!
activation_1348/PartitionedCallЌ
IdentityIdentity(activation_1348/PartitionedCall:output:01^batch_normalization_1248/StatefulPartitionedCall1^batch_normalization_1249/StatefulPartitionedCall1^batch_normalization_1250/StatefulPartitionedCall1^batch_normalization_1251/StatefulPartitionedCall1^batch_normalization_1252/StatefulPartitionedCall$^conv2d_1199/StatefulPartitionedCall$^conv2d_1200/StatefulPartitionedCall$^conv2d_1201/StatefulPartitionedCall$^conv2d_1202/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall$^dropout_201/StatefulPartitionedCall$^dropout_202/StatefulPartitionedCall$^dropout_203/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1248/StatefulPartitionedCall0batch_normalization_1248/StatefulPartitionedCall2d
0batch_normalization_1249/StatefulPartitionedCall0batch_normalization_1249/StatefulPartitionedCall2d
0batch_normalization_1250/StatefulPartitionedCall0batch_normalization_1250/StatefulPartitionedCall2d
0batch_normalization_1251/StatefulPartitionedCall0batch_normalization_1251/StatefulPartitionedCall2d
0batch_normalization_1252/StatefulPartitionedCall0batch_normalization_1252/StatefulPartitionedCall2J
#conv2d_1199/StatefulPartitionedCall#conv2d_1199/StatefulPartitionedCall2J
#conv2d_1200/StatefulPartitionedCall#conv2d_1200/StatefulPartitionedCall2J
#conv2d_1201/StatefulPartitionedCall#conv2d_1201/StatefulPartitionedCall2J
#conv2d_1202/StatefulPartitionedCall#conv2d_1202/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2J
#dropout_201/StatefulPartitionedCall#dropout_201/StatefulPartitionedCall2J
#dropout_202/StatefulPartitionedCall#dropout_202/StatefulPartitionedCall2J
#dropout_203/StatefulPartitionedCall#dropout_203/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ј
g
H__inference_dropout_203_layer_call_and_return_conditional_losses_4226861

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
щ
f
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228943

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Х*
т
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4226386

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradient•
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≥
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decay•
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/mulњ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЂ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp°
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mul…
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/add_1М
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228406

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228235

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Х
f
H__inference_dropout_202_layer_call_and_return_conditional_losses_4226685

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ё	
ъ
F__inference_dense_150_layer_call_and_return_conditional_losses_4226705

inputs2
matmul_readvariableop_resource:
А А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
Ћ
I
-__inference_dropout_203_layer_call_fn_4228960

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42267322
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228352

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
п
M
1__inference_activation_1345_layer_call_fn_4228514

inputs
identity’
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1345_layer_call_and_return_conditional_losses_42266002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Цr
м
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227561
conv2d_1199_input-
conv2d_1199_4227473: !
conv2d_1199_4227475: .
 batch_normalization_1248_4227479: .
 batch_normalization_1248_4227481: .
 batch_normalization_1248_4227483: .
 batch_normalization_1248_4227485: -
conv2d_1200_4227488:  !
conv2d_1200_4227490: .
 batch_normalization_1249_4227494: .
 batch_normalization_1249_4227496: .
 batch_normalization_1249_4227498: .
 batch_normalization_1249_4227500: -
conv2d_1201_4227505: @!
conv2d_1201_4227507:@.
 batch_normalization_1250_4227511:@.
 batch_normalization_1250_4227513:@.
 batch_normalization_1250_4227515:@.
 batch_normalization_1250_4227517:@-
conv2d_1202_4227520:@@!
conv2d_1202_4227522:@.
 batch_normalization_1251_4227526:@.
 batch_normalization_1251_4227528:@.
 batch_normalization_1251_4227530:@.
 batch_normalization_1251_4227532:@%
dense_150_4227538:
А А 
dense_150_4227540:	А/
 batch_normalization_1252_4227544:	А/
 batch_normalization_1252_4227546:	А/
 batch_normalization_1252_4227548:	А/
 batch_normalization_1252_4227550:	А$
dense_151_4227554:	А

dense_151_4227556:

identityИҐ0batch_normalization_1248/StatefulPartitionedCallҐ0batch_normalization_1249/StatefulPartitionedCallҐ0batch_normalization_1250/StatefulPartitionedCallҐ0batch_normalization_1251/StatefulPartitionedCallҐ0batch_normalization_1252/StatefulPartitionedCallҐ#conv2d_1199/StatefulPartitionedCallҐ#conv2d_1200/StatefulPartitionedCallҐ#conv2d_1201/StatefulPartitionedCallҐ#conv2d_1202/StatefulPartitionedCallҐ!dense_150/StatefulPartitionedCallҐ!dense_151/StatefulPartitionedCallЉ
#conv2d_1199/StatefulPartitionedCallStatefulPartitionedCallconv2d_1199_inputconv2d_1199_4227473conv2d_1199_4227475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_42264812%
#conv2d_1199/StatefulPartitionedCallЫ
activation_1343/PartitionedCallPartitionedCall,conv2d_1199/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1343_layer_call_and_return_conditional_losses_42264922!
activation_1343/PartitionedCall№
0batch_normalization_1248/StatefulPartitionedCallStatefulPartitionedCall(activation_1343/PartitionedCall:output:0 batch_normalization_1248_4227479 batch_normalization_1248_4227481 batch_normalization_1248_4227483 batch_normalization_1248_4227485*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_422651122
0batch_normalization_1248/StatefulPartitionedCallд
#conv2d_1200/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1248/StatefulPartitionedCall:output:0conv2d_1200_4227488conv2d_1200_4227490*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_42265312%
#conv2d_1200/StatefulPartitionedCallЫ
activation_1344/PartitionedCallPartitionedCall,conv2d_1200/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1344_layer_call_and_return_conditional_losses_42265422!
activation_1344/PartitionedCall№
0batch_normalization_1249/StatefulPartitionedCallStatefulPartitionedCall(activation_1344/PartitionedCall:output:0 batch_normalization_1249_4227494 batch_normalization_1249_4227496 batch_normalization_1249_4227498 batch_normalization_1249_4227500*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_422656122
0batch_normalization_1249/StatefulPartitionedCallЃ
!max_pooling2d_192/PartitionedCallPartitionedCall9batch_normalization_1249/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_42260322#
!max_pooling2d_192/PartitionedCallН
dropout_201/PartitionedCallPartitionedCall*max_pooling2d_192/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42265772
dropout_201/PartitionedCallѕ
#conv2d_1201/StatefulPartitionedCallStatefulPartitionedCall$dropout_201/PartitionedCall:output:0conv2d_1201_4227505conv2d_1201_4227507*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_42265892%
#conv2d_1201/StatefulPartitionedCallЫ
activation_1345/PartitionedCallPartitionedCall,conv2d_1201/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1345_layer_call_and_return_conditional_losses_42266002!
activation_1345/PartitionedCall№
0batch_normalization_1250/StatefulPartitionedCallStatefulPartitionedCall(activation_1345/PartitionedCall:output:0 batch_normalization_1250_4227511 batch_normalization_1250_4227513 batch_normalization_1250_4227515 batch_normalization_1250_4227517*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_422661922
0batch_normalization_1250/StatefulPartitionedCallд
#conv2d_1202/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1250/StatefulPartitionedCall:output:0conv2d_1202_4227520conv2d_1202_4227522*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_42266392%
#conv2d_1202/StatefulPartitionedCallЫ
activation_1346/PartitionedCallPartitionedCall,conv2d_1202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1346_layer_call_and_return_conditional_losses_42266502!
activation_1346/PartitionedCall№
0batch_normalization_1251/StatefulPartitionedCallStatefulPartitionedCall(activation_1346/PartitionedCall:output:0 batch_normalization_1251_4227526 batch_normalization_1251_4227528 batch_normalization_1251_4227530 batch_normalization_1251_4227532*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_422666922
0batch_normalization_1251/StatefulPartitionedCallЃ
!max_pooling2d_193/PartitionedCallPartitionedCall9batch_normalization_1251/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_42262962#
!max_pooling2d_193/PartitionedCallН
dropout_202/PartitionedCallPartitionedCall*max_pooling2d_193/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42266852
dropout_202/PartitionedCallэ
flatten_97/PartitionedCallPartitionedCall$dropout_202/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_97_layer_call_and_return_conditional_losses_42266932
flatten_97/PartitionedCallљ
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_97/PartitionedCall:output:0dense_150_4227538dense_150_4227540*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_42267052#
!dense_150/StatefulPartitionedCallТ
activation_1347/PartitionedCallPartitionedCall*dense_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1347_layer_call_and_return_conditional_losses_42267162!
activation_1347/PartitionedCall’
0batch_normalization_1252/StatefulPartitionedCallStatefulPartitionedCall(activation_1347/PartitionedCall:output:0 batch_normalization_1252_4227544 batch_normalization_1252_4227546 batch_normalization_1252_4227548 batch_normalization_1252_4227550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_422632622
0batch_normalization_1252/StatefulPartitionedCallХ
dropout_203/PartitionedCallPartitionedCall9batch_normalization_1252/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42267322
dropout_203/PartitionedCallљ
!dense_151/StatefulPartitionedCallStatefulPartitionedCall$dropout_203/PartitionedCall:output:0dense_151_4227554dense_151_4227556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_42267442#
!dense_151/StatefulPartitionedCallС
activation_1348/PartitionedCallPartitionedCall*dense_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1348_layer_call_and_return_conditional_losses_42267552!
activation_1348/PartitionedCallџ
IdentityIdentity(activation_1348/PartitionedCall:output:01^batch_normalization_1248/StatefulPartitionedCall1^batch_normalization_1249/StatefulPartitionedCall1^batch_normalization_1250/StatefulPartitionedCall1^batch_normalization_1251/StatefulPartitionedCall1^batch_normalization_1252/StatefulPartitionedCall$^conv2d_1199/StatefulPartitionedCall$^conv2d_1200/StatefulPartitionedCall$^conv2d_1201/StatefulPartitionedCall$^conv2d_1202/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1248/StatefulPartitionedCall0batch_normalization_1248/StatefulPartitionedCall2d
0batch_normalization_1249/StatefulPartitionedCall0batch_normalization_1249/StatefulPartitionedCall2d
0batch_normalization_1250/StatefulPartitionedCall0batch_normalization_1250/StatefulPartitionedCall2d
0batch_normalization_1251/StatefulPartitionedCall0batch_normalization_1251/StatefulPartitionedCall2d
0batch_normalization_1252/StatefulPartitionedCall0batch_normalization_1252/StatefulPartitionedCall2J
#conv2d_1199/StatefulPartitionedCall#conv2d_1199/StatefulPartitionedCall2J
#conv2d_1200/StatefulPartitionedCall#conv2d_1200/StatefulPartitionedCall2J
#conv2d_1201/StatefulPartitionedCall#conv2d_1201/StatefulPartitionedCall2J
#conv2d_1202/StatefulPartitionedCall#conv2d_1202/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
і

Б
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_4226589

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д
h
L__inference_activation_1345_layer_call_and_return_conditional_losses_4228509

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4227145

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228586

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ѓ
j
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_4226296

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
хq
б
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4226758

inputs-
conv2d_1199_4226482: !
conv2d_1199_4226484: .
 batch_normalization_1248_4226512: .
 batch_normalization_1248_4226514: .
 batch_normalization_1248_4226516: .
 batch_normalization_1248_4226518: -
conv2d_1200_4226532:  !
conv2d_1200_4226534: .
 batch_normalization_1249_4226562: .
 batch_normalization_1249_4226564: .
 batch_normalization_1249_4226566: .
 batch_normalization_1249_4226568: -
conv2d_1201_4226590: @!
conv2d_1201_4226592:@.
 batch_normalization_1250_4226620:@.
 batch_normalization_1250_4226622:@.
 batch_normalization_1250_4226624:@.
 batch_normalization_1250_4226626:@-
conv2d_1202_4226640:@@!
conv2d_1202_4226642:@.
 batch_normalization_1251_4226670:@.
 batch_normalization_1251_4226672:@.
 batch_normalization_1251_4226674:@.
 batch_normalization_1251_4226676:@%
dense_150_4226706:
А А 
dense_150_4226708:	А/
 batch_normalization_1252_4226718:	А/
 batch_normalization_1252_4226720:	А/
 batch_normalization_1252_4226722:	А/
 batch_normalization_1252_4226724:	А$
dense_151_4226745:	А

dense_151_4226747:

identityИҐ0batch_normalization_1248/StatefulPartitionedCallҐ0batch_normalization_1249/StatefulPartitionedCallҐ0batch_normalization_1250/StatefulPartitionedCallҐ0batch_normalization_1251/StatefulPartitionedCallҐ0batch_normalization_1252/StatefulPartitionedCallҐ#conv2d_1199/StatefulPartitionedCallҐ#conv2d_1200/StatefulPartitionedCallҐ#conv2d_1201/StatefulPartitionedCallҐ#conv2d_1202/StatefulPartitionedCallҐ!dense_150/StatefulPartitionedCallҐ!dense_151/StatefulPartitionedCall±
#conv2d_1199/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1199_4226482conv2d_1199_4226484*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_42264812%
#conv2d_1199/StatefulPartitionedCallЫ
activation_1343/PartitionedCallPartitionedCall,conv2d_1199/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1343_layer_call_and_return_conditional_losses_42264922!
activation_1343/PartitionedCall№
0batch_normalization_1248/StatefulPartitionedCallStatefulPartitionedCall(activation_1343/PartitionedCall:output:0 batch_normalization_1248_4226512 batch_normalization_1248_4226514 batch_normalization_1248_4226516 batch_normalization_1248_4226518*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_422651122
0batch_normalization_1248/StatefulPartitionedCallд
#conv2d_1200/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1248/StatefulPartitionedCall:output:0conv2d_1200_4226532conv2d_1200_4226534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_42265312%
#conv2d_1200/StatefulPartitionedCallЫ
activation_1344/PartitionedCallPartitionedCall,conv2d_1200/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1344_layer_call_and_return_conditional_losses_42265422!
activation_1344/PartitionedCall№
0batch_normalization_1249/StatefulPartitionedCallStatefulPartitionedCall(activation_1344/PartitionedCall:output:0 batch_normalization_1249_4226562 batch_normalization_1249_4226564 batch_normalization_1249_4226566 batch_normalization_1249_4226568*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_422656122
0batch_normalization_1249/StatefulPartitionedCallЃ
!max_pooling2d_192/PartitionedCallPartitionedCall9batch_normalization_1249/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_42260322#
!max_pooling2d_192/PartitionedCallН
dropout_201/PartitionedCallPartitionedCall*max_pooling2d_192/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42265772
dropout_201/PartitionedCallѕ
#conv2d_1201/StatefulPartitionedCallStatefulPartitionedCall$dropout_201/PartitionedCall:output:0conv2d_1201_4226590conv2d_1201_4226592*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_42265892%
#conv2d_1201/StatefulPartitionedCallЫ
activation_1345/PartitionedCallPartitionedCall,conv2d_1201/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1345_layer_call_and_return_conditional_losses_42266002!
activation_1345/PartitionedCall№
0batch_normalization_1250/StatefulPartitionedCallStatefulPartitionedCall(activation_1345/PartitionedCall:output:0 batch_normalization_1250_4226620 batch_normalization_1250_4226622 batch_normalization_1250_4226624 batch_normalization_1250_4226626*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_422661922
0batch_normalization_1250/StatefulPartitionedCallд
#conv2d_1202/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1250/StatefulPartitionedCall:output:0conv2d_1202_4226640conv2d_1202_4226642*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_42266392%
#conv2d_1202/StatefulPartitionedCallЫ
activation_1346/PartitionedCallPartitionedCall,conv2d_1202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1346_layer_call_and_return_conditional_losses_42266502!
activation_1346/PartitionedCall№
0batch_normalization_1251/StatefulPartitionedCallStatefulPartitionedCall(activation_1346/PartitionedCall:output:0 batch_normalization_1251_4226670 batch_normalization_1251_4226672 batch_normalization_1251_4226674 batch_normalization_1251_4226676*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_422666922
0batch_normalization_1251/StatefulPartitionedCallЃ
!max_pooling2d_193/PartitionedCallPartitionedCall9batch_normalization_1251/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_42262962#
!max_pooling2d_193/PartitionedCallН
dropout_202/PartitionedCallPartitionedCall*max_pooling2d_193/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42266852
dropout_202/PartitionedCallэ
flatten_97/PartitionedCallPartitionedCall$dropout_202/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_97_layer_call_and_return_conditional_losses_42266932
flatten_97/PartitionedCallљ
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_97/PartitionedCall:output:0dense_150_4226706dense_150_4226708*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_42267052#
!dense_150/StatefulPartitionedCallТ
activation_1347/PartitionedCallPartitionedCall*dense_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1347_layer_call_and_return_conditional_losses_42267162!
activation_1347/PartitionedCall’
0batch_normalization_1252/StatefulPartitionedCallStatefulPartitionedCall(activation_1347/PartitionedCall:output:0 batch_normalization_1252_4226718 batch_normalization_1252_4226720 batch_normalization_1252_4226722 batch_normalization_1252_4226724*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_422632622
0batch_normalization_1252/StatefulPartitionedCallХ
dropout_203/PartitionedCallPartitionedCall9batch_normalization_1252/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42267322
dropout_203/PartitionedCallљ
!dense_151/StatefulPartitionedCallStatefulPartitionedCall$dropout_203/PartitionedCall:output:0dense_151_4226745dense_151_4226747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_42267442#
!dense_151/StatefulPartitionedCallС
activation_1348/PartitionedCallPartitionedCall*dense_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1348_layer_call_and_return_conditional_losses_42267552!
activation_1348/PartitionedCallџ
IdentityIdentity(activation_1348/PartitionedCall:output:01^batch_normalization_1248/StatefulPartitionedCall1^batch_normalization_1249/StatefulPartitionedCall1^batch_normalization_1250/StatefulPartitionedCall1^batch_normalization_1251/StatefulPartitionedCall1^batch_normalization_1252/StatefulPartitionedCall$^conv2d_1199/StatefulPartitionedCall$^conv2d_1200/StatefulPartitionedCall$^conv2d_1201/StatefulPartitionedCall$^conv2d_1202/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1248/StatefulPartitionedCall0batch_normalization_1248/StatefulPartitionedCall2d
0batch_normalization_1249/StatefulPartitionedCall0batch_normalization_1249/StatefulPartitionedCall2d
0batch_normalization_1250/StatefulPartitionedCall0batch_normalization_1250/StatefulPartitionedCall2d
0batch_normalization_1251/StatefulPartitionedCall0batch_normalization_1251/StatefulPartitionedCall2d
0batch_normalization_1252/StatefulPartitionedCall0batch_normalization_1252/StatefulPartitionedCall2J
#conv2d_1199/StatefulPartitionedCall#conv2d_1199/StatefulPartitionedCall2J
#conv2d_1200/StatefulPartitionedCall#conv2d_1200/StatefulPartitionedCall2J
#conv2d_1201/StatefulPartitionedCall#conv2d_1201/StatefulPartitionedCall2J
#conv2d_1202/StatefulPartitionedCall#conv2d_1202/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
т
’
:__inference_batch_normalization_1249_layer_call_fn_4228432

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_42259662
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
з
I
-__inference_dropout_202_layer_call_fn_4228813

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42266852
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228739

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ф
’
:__inference_batch_normalization_1249_layer_call_fn_4228419

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_42259222
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
„
f
-__inference_dropout_203_layer_call_fn_4228965

inputs
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42268612
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
”
M
1__inference_activation_1347_layer_call_fn_4228858

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1347_layer_call_and_return_conditional_losses_42267162
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_4228162

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_4228648

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
і
Є
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228878

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/add_1№
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4226511

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_4228495

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4226619

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
 
Ў
,__inference_MiniVGGNet_layer_call_fn_4228083

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
А А

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:	А


unknown_30:

identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_42267582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4226060

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4226230

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
™
’
:__inference_batch_normalization_1249_layer_call_fn_4228458

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_42270852
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
з
I
-__inference_dropout_201_layer_call_fn_4228480

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42265772
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4227085

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228199

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
у
f
-__inference_dropout_202_layer_call_fn_4228818

inputs
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42269062
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
л
г
,__inference_MiniVGGNet_layer_call_fn_4226825
conv2d_1199_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
А А

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:	А


unknown_30:

identityИҐStatefulPartitionedCall†
StatefulPartitionedCallStatefulPartitionedCallconv2d_1199_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_42267582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
і

Б
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_4226481

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
ќ
Ґ
-__inference_conv2d_1201_layer_call_fn_4228504

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_42265892
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_4226639

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ф
’
:__inference_batch_normalization_1251_layer_call_fn_4228752

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_42261862
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
©
Ы
+__inference_dense_150_layer_call_fn_4228848

inputs
unknown:
А А
	unknown_0:	А
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_42267052
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
™
’
:__inference_batch_normalization_1251_layer_call_fn_4228791

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_42269422
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
«ў
И#
"__inference__wrapped_model_4225774
conv2d_1199_inputO
5minivggnet_conv2d_1199_conv2d_readvariableop_resource: D
6minivggnet_conv2d_1199_biasadd_readvariableop_resource: I
;minivggnet_batch_normalization_1248_readvariableop_resource: K
=minivggnet_batch_normalization_1248_readvariableop_1_resource: Z
Lminivggnet_batch_normalization_1248_fusedbatchnormv3_readvariableop_resource: \
Nminivggnet_batch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource: O
5minivggnet_conv2d_1200_conv2d_readvariableop_resource:  D
6minivggnet_conv2d_1200_biasadd_readvariableop_resource: I
;minivggnet_batch_normalization_1249_readvariableop_resource: K
=minivggnet_batch_normalization_1249_readvariableop_1_resource: Z
Lminivggnet_batch_normalization_1249_fusedbatchnormv3_readvariableop_resource: \
Nminivggnet_batch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource: O
5minivggnet_conv2d_1201_conv2d_readvariableop_resource: @D
6minivggnet_conv2d_1201_biasadd_readvariableop_resource:@I
;minivggnet_batch_normalization_1250_readvariableop_resource:@K
=minivggnet_batch_normalization_1250_readvariableop_1_resource:@Z
Lminivggnet_batch_normalization_1250_fusedbatchnormv3_readvariableop_resource:@\
Nminivggnet_batch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource:@O
5minivggnet_conv2d_1202_conv2d_readvariableop_resource:@@D
6minivggnet_conv2d_1202_biasadd_readvariableop_resource:@I
;minivggnet_batch_normalization_1251_readvariableop_resource:@K
=minivggnet_batch_normalization_1251_readvariableop_1_resource:@Z
Lminivggnet_batch_normalization_1251_fusedbatchnormv3_readvariableop_resource:@\
Nminivggnet_batch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource:@G
3minivggnet_dense_150_matmul_readvariableop_resource:
А АC
4minivggnet_dense_150_biasadd_readvariableop_resource:	АT
Eminivggnet_batch_normalization_1252_batchnorm_readvariableop_resource:	АX
Iminivggnet_batch_normalization_1252_batchnorm_mul_readvariableop_resource:	АV
Gminivggnet_batch_normalization_1252_batchnorm_readvariableop_1_resource:	АV
Gminivggnet_batch_normalization_1252_batchnorm_readvariableop_2_resource:	АF
3minivggnet_dense_151_matmul_readvariableop_resource:	А
B
4minivggnet_dense_151_biasadd_readvariableop_resource:

identityИҐCMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOpҐEMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1Ґ2MiniVGGNet/batch_normalization_1248/ReadVariableOpҐ4MiniVGGNet/batch_normalization_1248/ReadVariableOp_1ҐCMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOpҐEMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1Ґ2MiniVGGNet/batch_normalization_1249/ReadVariableOpҐ4MiniVGGNet/batch_normalization_1249/ReadVariableOp_1ҐCMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOpҐEMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1Ґ2MiniVGGNet/batch_normalization_1250/ReadVariableOpҐ4MiniVGGNet/batch_normalization_1250/ReadVariableOp_1ҐCMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOpҐEMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1Ґ2MiniVGGNet/batch_normalization_1251/ReadVariableOpҐ4MiniVGGNet/batch_normalization_1251/ReadVariableOp_1Ґ<MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOpҐ>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1Ґ>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2Ґ@MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOpҐ-MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOpҐ,MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOpҐ-MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOpҐ,MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOpҐ-MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOpҐ,MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOpҐ-MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOpҐ,MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOpҐ+MiniVGGNet/dense_150/BiasAdd/ReadVariableOpҐ*MiniVGGNet/dense_150/MatMul/ReadVariableOpҐ+MiniVGGNet/dense_151/BiasAdd/ReadVariableOpҐ*MiniVGGNet/dense_151/MatMul/ReadVariableOpЏ
,MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1199_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOpу
MiniVGGNet/conv2d_1199/Conv2DConv2Dconv2d_1199_input4MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
MiniVGGNet/conv2d_1199/Conv2D—
-MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1199_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOpд
MiniVGGNet/conv2d_1199/BiasAddBiasAdd&MiniVGGNet/conv2d_1199/Conv2D:output:05MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2 
MiniVGGNet/conv2d_1199/BiasAdd≠
MiniVGGNet/activation_1343/ReluRelu'MiniVGGNet/conv2d_1199/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2!
MiniVGGNet/activation_1343/Reluа
2MiniVGGNet/batch_normalization_1248/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1248_readvariableop_resource*
_output_shapes
: *
dtype024
2MiniVGGNet/batch_normalization_1248/ReadVariableOpж
4MiniVGGNet/batch_normalization_1248/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1248_readvariableop_1_resource*
_output_shapes
: *
dtype026
4MiniVGGNet/batch_normalization_1248/ReadVariableOp_1У
CMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1248_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
CMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOpЩ
EMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
EMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1…
4MiniVGGNet/batch_normalization_1248/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1343/Relu:activations:0:MiniVGGNet/batch_normalization_1248/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1248/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 26
4MiniVGGNet/batch_normalization_1248/FusedBatchNormV3Џ
,MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1200_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOpЪ
MiniVGGNet/conv2d_1200/Conv2DConv2D8MiniVGGNet/batch_normalization_1248/FusedBatchNormV3:y:04MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
MiniVGGNet/conv2d_1200/Conv2D—
-MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1200_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOpд
MiniVGGNet/conv2d_1200/BiasAddBiasAdd&MiniVGGNet/conv2d_1200/Conv2D:output:05MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2 
MiniVGGNet/conv2d_1200/BiasAdd≠
MiniVGGNet/activation_1344/ReluRelu'MiniVGGNet/conv2d_1200/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2!
MiniVGGNet/activation_1344/Reluа
2MiniVGGNet/batch_normalization_1249/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1249_readvariableop_resource*
_output_shapes
: *
dtype024
2MiniVGGNet/batch_normalization_1249/ReadVariableOpж
4MiniVGGNet/batch_normalization_1249/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1249_readvariableop_1_resource*
_output_shapes
: *
dtype026
4MiniVGGNet/batch_normalization_1249/ReadVariableOp_1У
CMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1249_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
CMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOpЩ
EMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
EMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1…
4MiniVGGNet/batch_normalization_1249/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1344/Relu:activations:0:MiniVGGNet/batch_normalization_1249/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1249/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 26
4MiniVGGNet/batch_normalization_1249/FusedBatchNormV3ю
$MiniVGGNet/max_pooling2d_192/MaxPoolMaxPool8MiniVGGNet/batch_normalization_1249/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2&
$MiniVGGNet/max_pooling2d_192/MaxPoolЈ
MiniVGGNet/dropout_201/IdentityIdentity-MiniVGGNet/max_pooling2d_192/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2!
MiniVGGNet/dropout_201/IdentityЏ
,MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1201_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOpК
MiniVGGNet/conv2d_1201/Conv2DConv2D(MiniVGGNet/dropout_201/Identity:output:04MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
MiniVGGNet/conv2d_1201/Conv2D—
-MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1201_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOpд
MiniVGGNet/conv2d_1201/BiasAddBiasAdd&MiniVGGNet/conv2d_1201/Conv2D:output:05MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2 
MiniVGGNet/conv2d_1201/BiasAdd≠
MiniVGGNet/activation_1345/ReluRelu'MiniVGGNet/conv2d_1201/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
MiniVGGNet/activation_1345/Reluа
2MiniVGGNet/batch_normalization_1250/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1250_readvariableop_resource*
_output_shapes
:@*
dtype024
2MiniVGGNet/batch_normalization_1250/ReadVariableOpж
4MiniVGGNet/batch_normalization_1250/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1250_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4MiniVGGNet/batch_normalization_1250/ReadVariableOp_1У
CMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1250_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
CMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOpЩ
EMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
EMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1…
4MiniVGGNet/batch_normalization_1250/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1345/Relu:activations:0:MiniVGGNet/batch_normalization_1250/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1250/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4MiniVGGNet/batch_normalization_1250/FusedBatchNormV3Џ
,MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1202_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOpЪ
MiniVGGNet/conv2d_1202/Conv2DConv2D8MiniVGGNet/batch_normalization_1250/FusedBatchNormV3:y:04MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
MiniVGGNet/conv2d_1202/Conv2D—
-MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1202_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOpд
MiniVGGNet/conv2d_1202/BiasAddBiasAdd&MiniVGGNet/conv2d_1202/Conv2D:output:05MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2 
MiniVGGNet/conv2d_1202/BiasAdd≠
MiniVGGNet/activation_1346/ReluRelu'MiniVGGNet/conv2d_1202/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
MiniVGGNet/activation_1346/Reluа
2MiniVGGNet/batch_normalization_1251/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1251_readvariableop_resource*
_output_shapes
:@*
dtype024
2MiniVGGNet/batch_normalization_1251/ReadVariableOpж
4MiniVGGNet/batch_normalization_1251/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1251_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4MiniVGGNet/batch_normalization_1251/ReadVariableOp_1У
CMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1251_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
CMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOpЩ
EMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
EMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1…
4MiniVGGNet/batch_normalization_1251/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1346/Relu:activations:0:MiniVGGNet/batch_normalization_1251/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1251/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4MiniVGGNet/batch_normalization_1251/FusedBatchNormV3ю
$MiniVGGNet/max_pooling2d_193/MaxPoolMaxPool8MiniVGGNet/batch_normalization_1251/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2&
$MiniVGGNet/max_pooling2d_193/MaxPoolЈ
MiniVGGNet/dropout_202/IdentityIdentity-MiniVGGNet/max_pooling2d_193/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
MiniVGGNet/dropout_202/IdentityЛ
MiniVGGNet/flatten_97/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
MiniVGGNet/flatten_97/Constћ
MiniVGGNet/flatten_97/ReshapeReshape(MiniVGGNet/dropout_202/Identity:output:0$MiniVGGNet/flatten_97/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2
MiniVGGNet/flatten_97/Reshapeќ
*MiniVGGNet/dense_150/MatMul/ReadVariableOpReadVariableOp3minivggnet_dense_150_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02,
*MiniVGGNet/dense_150/MatMul/ReadVariableOp”
MiniVGGNet/dense_150/MatMulMatMul&MiniVGGNet/flatten_97/Reshape:output:02MiniVGGNet/dense_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MiniVGGNet/dense_150/MatMulћ
+MiniVGGNet/dense_150/BiasAdd/ReadVariableOpReadVariableOp4minivggnet_dense_150_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+MiniVGGNet/dense_150/BiasAdd/ReadVariableOp÷
MiniVGGNet/dense_150/BiasAddBiasAdd%MiniVGGNet/dense_150/MatMul:product:03MiniVGGNet/dense_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MiniVGGNet/dense_150/BiasAdd§
MiniVGGNet/activation_1347/ReluRelu%MiniVGGNet/dense_150/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
MiniVGGNet/activation_1347/Relu€
<MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOpReadVariableOpEminivggnet_batch_normalization_1252_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOpѓ
3MiniVGGNet/batch_normalization_1252/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:25
3MiniVGGNet/batch_normalization_1252/batchnorm/add/yЩ
1MiniVGGNet/batch_normalization_1252/batchnorm/addAddV2DMiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1252/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А23
1MiniVGGNet/batch_normalization_1252/batchnorm/add–
3MiniVGGNet/batch_normalization_1252/batchnorm/RsqrtRsqrt5MiniVGGNet/batch_normalization_1252/batchnorm/add:z:0*
T0*
_output_shapes	
:А25
3MiniVGGNet/batch_normalization_1252/batchnorm/RsqrtЛ
@MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOpReadVariableOpIminivggnet_batch_normalization_1252_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02B
@MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOpЦ
1MiniVGGNet/batch_normalization_1252/batchnorm/mulMul7MiniVGGNet/batch_normalization_1252/batchnorm/Rsqrt:y:0HMiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А23
1MiniVGGNet/batch_normalization_1252/batchnorm/mulК
3MiniVGGNet/batch_normalization_1252/batchnorm/mul_1Mul-MiniVGGNet/activation_1347/Relu:activations:05MiniVGGNet/batch_normalization_1252/batchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3MiniVGGNet/batch_normalization_1252/batchnorm/mul_1Е
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1ReadVariableOpGminivggnet_batch_normalization_1252_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1Ц
3MiniVGGNet/batch_normalization_1252/batchnorm/mul_2MulFMiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1:value:05MiniVGGNet/batch_normalization_1252/batchnorm/mul:z:0*
T0*
_output_shapes	
:А25
3MiniVGGNet/batch_normalization_1252/batchnorm/mul_2Е
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2ReadVariableOpGminivggnet_batch_normalization_1252_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02@
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2Ф
1MiniVGGNet/batch_normalization_1252/batchnorm/subSubFMiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2:value:07MiniVGGNet/batch_normalization_1252/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А23
1MiniVGGNet/batch_normalization_1252/batchnorm/subЦ
3MiniVGGNet/batch_normalization_1252/batchnorm/add_1AddV27MiniVGGNet/batch_normalization_1252/batchnorm/mul_1:z:05MiniVGGNet/batch_normalization_1252/batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3MiniVGGNet/batch_normalization_1252/batchnorm/add_1Ї
MiniVGGNet/dropout_203/IdentityIdentity7MiniVGGNet/batch_normalization_1252/batchnorm/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
MiniVGGNet/dropout_203/IdentityЌ
*MiniVGGNet/dense_151/MatMul/ReadVariableOpReadVariableOp3minivggnet_dense_151_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02,
*MiniVGGNet/dense_151/MatMul/ReadVariableOp‘
MiniVGGNet/dense_151/MatMulMatMul(MiniVGGNet/dropout_203/Identity:output:02MiniVGGNet/dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MiniVGGNet/dense_151/MatMulЋ
+MiniVGGNet/dense_151/BiasAdd/ReadVariableOpReadVariableOp4minivggnet_dense_151_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+MiniVGGNet/dense_151/BiasAdd/ReadVariableOp’
MiniVGGNet/dense_151/BiasAddBiasAdd%MiniVGGNet/dense_151/MatMul:product:03MiniVGGNet/dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MiniVGGNet/dense_151/BiasAddђ
"MiniVGGNet/activation_1348/SoftmaxSoftmax%MiniVGGNet/dense_151/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2$
"MiniVGGNet/activation_1348/SoftmaxЮ
IdentityIdentity,MiniVGGNet/activation_1348/Softmax:softmax:0D^MiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1248/ReadVariableOp5^MiniVGGNet/batch_normalization_1248/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1249/ReadVariableOp5^MiniVGGNet/batch_normalization_1249/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1250/ReadVariableOp5^MiniVGGNet/batch_normalization_1250/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1251/ReadVariableOp5^MiniVGGNet/batch_normalization_1251/ReadVariableOp_1=^MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp?^MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1?^MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2A^MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOp.^MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOp,^MiniVGGNet/dense_150/BiasAdd/ReadVariableOp+^MiniVGGNet/dense_150/MatMul/ReadVariableOp,^MiniVGGNet/dense_151/BiasAdd/ReadVariableOp+^MiniVGGNet/dense_151/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2К
CMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp2О
EMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1248/ReadVariableOp2MiniVGGNet/batch_normalization_1248/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1248/ReadVariableOp_14MiniVGGNet/batch_normalization_1248/ReadVariableOp_12К
CMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp2О
EMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1249/ReadVariableOp2MiniVGGNet/batch_normalization_1249/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1249/ReadVariableOp_14MiniVGGNet/batch_normalization_1249/ReadVariableOp_12К
CMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp2О
EMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1250/ReadVariableOp2MiniVGGNet/batch_normalization_1250/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1250/ReadVariableOp_14MiniVGGNet/batch_normalization_1250/ReadVariableOp_12К
CMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp2О
EMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1251/ReadVariableOp2MiniVGGNet/batch_normalization_1251/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1251/ReadVariableOp_14MiniVGGNet/batch_normalization_1251/ReadVariableOp_12|
<MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp<MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp2А
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_1>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_12А
>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_2>MiniVGGNet/batch_normalization_1252/batchnorm/ReadVariableOp_22Д
@MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOp@MiniVGGNet/batch_normalization_1252/batchnorm/mul/ReadVariableOp2^
-MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1199/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1199/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1200/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1200/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1201/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1201/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1202/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1202/Conv2D/ReadVariableOp2Z
+MiniVGGNet/dense_150/BiasAdd/ReadVariableOp+MiniVGGNet/dense_150/BiasAdd/ReadVariableOp2X
*MiniVGGNet/dense_150/MatMul/ReadVariableOp*MiniVGGNet/dense_150/MatMul/ReadVariableOp2Z
+MiniVGGNet/dense_151/BiasAdd/ReadVariableOp+MiniVGGNet/dense_151/BiasAdd/ReadVariableOp2X
*MiniVGGNet/dense_151/MatMul/ReadVariableOp*MiniVGGNet/dense_151/MatMul/ReadVariableOp:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
«
†
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228721

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ПЈ
в
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227854

inputsD
*conv2d_1199_conv2d_readvariableop_resource: 9
+conv2d_1199_biasadd_readvariableop_resource: >
0batch_normalization_1248_readvariableop_resource: @
2batch_normalization_1248_readvariableop_1_resource: O
Abatch_normalization_1248_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1200_conv2d_readvariableop_resource:  9
+conv2d_1200_biasadd_readvariableop_resource: >
0batch_normalization_1249_readvariableop_resource: @
2batch_normalization_1249_readvariableop_1_resource: O
Abatch_normalization_1249_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1201_conv2d_readvariableop_resource: @9
+conv2d_1201_biasadd_readvariableop_resource:@>
0batch_normalization_1250_readvariableop_resource:@@
2batch_normalization_1250_readvariableop_1_resource:@O
Abatch_normalization_1250_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource:@D
*conv2d_1202_conv2d_readvariableop_resource:@@9
+conv2d_1202_biasadd_readvariableop_resource:@>
0batch_normalization_1251_readvariableop_resource:@@
2batch_normalization_1251_readvariableop_1_resource:@O
Abatch_normalization_1251_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_150_matmul_readvariableop_resource:
А А8
)dense_150_biasadd_readvariableop_resource:	АI
:batch_normalization_1252_batchnorm_readvariableop_resource:	АM
>batch_normalization_1252_batchnorm_mul_readvariableop_resource:	АK
<batch_normalization_1252_batchnorm_readvariableop_1_resource:	АK
<batch_normalization_1252_batchnorm_readvariableop_2_resource:	А;
(dense_151_matmul_readvariableop_resource:	А
7
)dense_151_biasadd_readvariableop_resource:

identityИҐ8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1248/ReadVariableOpҐ)batch_normalization_1248/ReadVariableOp_1Ґ8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1249/ReadVariableOpҐ)batch_normalization_1249/ReadVariableOp_1Ґ8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1250/ReadVariableOpҐ)batch_normalization_1250/ReadVariableOp_1Ґ8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1251/ReadVariableOpҐ)batch_normalization_1251/ReadVariableOp_1Ґ1batch_normalization_1252/batchnorm/ReadVariableOpҐ3batch_normalization_1252/batchnorm/ReadVariableOp_1Ґ3batch_normalization_1252/batchnorm/ReadVariableOp_2Ґ5batch_normalization_1252/batchnorm/mul/ReadVariableOpҐ"conv2d_1199/BiasAdd/ReadVariableOpҐ!conv2d_1199/Conv2D/ReadVariableOpҐ"conv2d_1200/BiasAdd/ReadVariableOpҐ!conv2d_1200/Conv2D/ReadVariableOpҐ"conv2d_1201/BiasAdd/ReadVariableOpҐ!conv2d_1201/Conv2D/ReadVariableOpҐ"conv2d_1202/BiasAdd/ReadVariableOpҐ!conv2d_1202/Conv2D/ReadVariableOpҐ dense_150/BiasAdd/ReadVariableOpҐdense_150/MatMul/ReadVariableOpҐ dense_151/BiasAdd/ReadVariableOpҐdense_151/MatMul/ReadVariableOpє
!conv2d_1199/Conv2D/ReadVariableOpReadVariableOp*conv2d_1199_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1199/Conv2D/ReadVariableOp«
conv2d_1199/Conv2DConv2Dinputs)conv2d_1199/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_1199/Conv2D∞
"conv2d_1199/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1199_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1199/BiasAdd/ReadVariableOpЄ
conv2d_1199/BiasAddBiasAddconv2d_1199/Conv2D:output:0*conv2d_1199/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_1199/BiasAddМ
activation_1343/ReluReluconv2d_1199/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_1343/Reluњ
'batch_normalization_1248/ReadVariableOpReadVariableOp0batch_normalization_1248_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1248/ReadVariableOp≈
)batch_normalization_1248/ReadVariableOp_1ReadVariableOp2batch_normalization_1248_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1248/ReadVariableOp_1т
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1248_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1ь
)batch_normalization_1248/FusedBatchNormV3FusedBatchNormV3"activation_1343/Relu:activations:0/batch_normalization_1248/ReadVariableOp:value:01batch_normalization_1248/ReadVariableOp_1:value:0@batch_normalization_1248/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2+
)batch_normalization_1248/FusedBatchNormV3є
!conv2d_1200/Conv2D/ReadVariableOpReadVariableOp*conv2d_1200_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02#
!conv2d_1200/Conv2D/ReadVariableOpо
conv2d_1200/Conv2DConv2D-batch_normalization_1248/FusedBatchNormV3:y:0)conv2d_1200/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_1200/Conv2D∞
"conv2d_1200/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1200_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1200/BiasAdd/ReadVariableOpЄ
conv2d_1200/BiasAddBiasAddconv2d_1200/Conv2D:output:0*conv2d_1200/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_1200/BiasAddМ
activation_1344/ReluReluconv2d_1200/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_1344/Reluњ
'batch_normalization_1249/ReadVariableOpReadVariableOp0batch_normalization_1249_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1249/ReadVariableOp≈
)batch_normalization_1249/ReadVariableOp_1ReadVariableOp2batch_normalization_1249_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1249/ReadVariableOp_1т
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1249_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1ь
)batch_normalization_1249/FusedBatchNormV3FusedBatchNormV3"activation_1344/Relu:activations:0/batch_normalization_1249/ReadVariableOp:value:01batch_normalization_1249/ReadVariableOp_1:value:0@batch_normalization_1249/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2+
)batch_normalization_1249/FusedBatchNormV3Ё
max_pooling2d_192/MaxPoolMaxPool-batch_normalization_1249/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_192/MaxPoolЦ
dropout_201/IdentityIdentity"max_pooling2d_192/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_201/Identityє
!conv2d_1201/Conv2D/ReadVariableOpReadVariableOp*conv2d_1201_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1201/Conv2D/ReadVariableOpё
conv2d_1201/Conv2DConv2Ddropout_201/Identity:output:0)conv2d_1201/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_1201/Conv2D∞
"conv2d_1201/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1201_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1201/BiasAdd/ReadVariableOpЄ
conv2d_1201/BiasAddBiasAddconv2d_1201/Conv2D:output:0*conv2d_1201/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_1201/BiasAddМ
activation_1345/ReluReluconv2d_1201/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_1345/Reluњ
'batch_normalization_1250/ReadVariableOpReadVariableOp0batch_normalization_1250_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1250/ReadVariableOp≈
)batch_normalization_1250/ReadVariableOp_1ReadVariableOp2batch_normalization_1250_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1250/ReadVariableOp_1т
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1250_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1ь
)batch_normalization_1250/FusedBatchNormV3FusedBatchNormV3"activation_1345/Relu:activations:0/batch_normalization_1250/ReadVariableOp:value:01batch_normalization_1250/ReadVariableOp_1:value:0@batch_normalization_1250/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2+
)batch_normalization_1250/FusedBatchNormV3є
!conv2d_1202/Conv2D/ReadVariableOpReadVariableOp*conv2d_1202_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02#
!conv2d_1202/Conv2D/ReadVariableOpо
conv2d_1202/Conv2DConv2D-batch_normalization_1250/FusedBatchNormV3:y:0)conv2d_1202/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_1202/Conv2D∞
"conv2d_1202/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1202_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1202/BiasAdd/ReadVariableOpЄ
conv2d_1202/BiasAddBiasAddconv2d_1202/Conv2D:output:0*conv2d_1202/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_1202/BiasAddМ
activation_1346/ReluReluconv2d_1202/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_1346/Reluњ
'batch_normalization_1251/ReadVariableOpReadVariableOp0batch_normalization_1251_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1251/ReadVariableOp≈
)batch_normalization_1251/ReadVariableOp_1ReadVariableOp2batch_normalization_1251_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1251/ReadVariableOp_1т
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1251_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1ь
)batch_normalization_1251/FusedBatchNormV3FusedBatchNormV3"activation_1346/Relu:activations:0/batch_normalization_1251/ReadVariableOp:value:01batch_normalization_1251/ReadVariableOp_1:value:0@batch_normalization_1251/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2+
)batch_normalization_1251/FusedBatchNormV3Ё
max_pooling2d_193/MaxPoolMaxPool-batch_normalization_1251/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_193/MaxPoolЦ
dropout_202/IdentityIdentity"max_pooling2d_193/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_202/Identityu
flatten_97/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_97/Const†
flatten_97/ReshapeReshapedropout_202/Identity:output:0flatten_97/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2
flatten_97/Reshape≠
dense_150/MatMul/ReadVariableOpReadVariableOp(dense_150_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02!
dense_150/MatMul/ReadVariableOpІ
dense_150/MatMulMatMulflatten_97/Reshape:output:0'dense_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_150/MatMulЂ
 dense_150/BiasAdd/ReadVariableOpReadVariableOp)dense_150_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_150/BiasAdd/ReadVariableOp™
dense_150/BiasAddBiasAdddense_150/MatMul:product:0(dense_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_150/BiasAddГ
activation_1347/ReluReludense_150/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
activation_1347/Reluё
1batch_normalization_1252/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1252_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_1252/batchnorm/ReadVariableOpЩ
(batch_normalization_1252/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2*
(batch_normalization_1252/batchnorm/add/yн
&batch_normalization_1252/batchnorm/addAddV29batch_normalization_1252/batchnorm/ReadVariableOp:value:01batch_normalization_1252/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/addѓ
(batch_normalization_1252/batchnorm/RsqrtRsqrt*batch_normalization_1252/batchnorm/add:z:0*
T0*
_output_shapes	
:А2*
(batch_normalization_1252/batchnorm/Rsqrtк
5batch_normalization_1252/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1252_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_1252/batchnorm/mul/ReadVariableOpк
&batch_normalization_1252/batchnorm/mulMul,batch_normalization_1252/batchnorm/Rsqrt:y:0=batch_normalization_1252/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/mulё
(batch_normalization_1252/batchnorm/mul_1Mul"activation_1347/Relu:activations:0*batch_normalization_1252/batchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(batch_normalization_1252/batchnorm/mul_1д
3batch_normalization_1252/batchnorm/ReadVariableOp_1ReadVariableOp<batch_normalization_1252_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_1252/batchnorm/ReadVariableOp_1к
(batch_normalization_1252/batchnorm/mul_2Mul;batch_normalization_1252/batchnorm/ReadVariableOp_1:value:0*batch_normalization_1252/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2*
(batch_normalization_1252/batchnorm/mul_2д
3batch_normalization_1252/batchnorm/ReadVariableOp_2ReadVariableOp<batch_normalization_1252_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_1252/batchnorm/ReadVariableOp_2и
&batch_normalization_1252/batchnorm/subSub;batch_normalization_1252/batchnorm/ReadVariableOp_2:value:0,batch_normalization_1252/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/subк
(batch_normalization_1252/batchnorm/add_1AddV2,batch_normalization_1252/batchnorm/mul_1:z:0*batch_normalization_1252/batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(batch_normalization_1252/batchnorm/add_1Щ
dropout_203/IdentityIdentity,batch_normalization_1252/batchnorm/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_203/Identityђ
dense_151/MatMul/ReadVariableOpReadVariableOp(dense_151_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02!
dense_151/MatMul/ReadVariableOp®
dense_151/MatMulMatMuldropout_203/Identity:output:0'dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_151/MatMul™
 dense_151/BiasAdd/ReadVariableOpReadVariableOp)dense_151_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_151/BiasAdd/ReadVariableOp©
dense_151/BiasAddBiasAdddense_151/MatMul:product:0(dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_151/BiasAddЛ
activation_1348/SoftmaxSoftmaxdense_151/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
activation_1348/Softmax≥
IdentityIdentity!activation_1348/Softmax:softmax:09^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1248/ReadVariableOp*^batch_normalization_1248/ReadVariableOp_19^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1249/ReadVariableOp*^batch_normalization_1249/ReadVariableOp_19^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1250/ReadVariableOp*^batch_normalization_1250/ReadVariableOp_19^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1251/ReadVariableOp*^batch_normalization_1251/ReadVariableOp_12^batch_normalization_1252/batchnorm/ReadVariableOp4^batch_normalization_1252/batchnorm/ReadVariableOp_14^batch_normalization_1252/batchnorm/ReadVariableOp_26^batch_normalization_1252/batchnorm/mul/ReadVariableOp#^conv2d_1199/BiasAdd/ReadVariableOp"^conv2d_1199/Conv2D/ReadVariableOp#^conv2d_1200/BiasAdd/ReadVariableOp"^conv2d_1200/Conv2D/ReadVariableOp#^conv2d_1201/BiasAdd/ReadVariableOp"^conv2d_1201/Conv2D/ReadVariableOp#^conv2d_1202/BiasAdd/ReadVariableOp"^conv2d_1202/Conv2D/ReadVariableOp!^dense_150/BiasAdd/ReadVariableOp ^dense_150/MatMul/ReadVariableOp!^dense_151/BiasAdd/ReadVariableOp ^dense_151/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2t
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOp8batch_normalization_1248/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1248/ReadVariableOp'batch_normalization_1248/ReadVariableOp2V
)batch_normalization_1248/ReadVariableOp_1)batch_normalization_1248/ReadVariableOp_12t
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOp8batch_normalization_1249/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1249/ReadVariableOp'batch_normalization_1249/ReadVariableOp2V
)batch_normalization_1249/ReadVariableOp_1)batch_normalization_1249/ReadVariableOp_12t
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOp8batch_normalization_1250/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1250/ReadVariableOp'batch_normalization_1250/ReadVariableOp2V
)batch_normalization_1250/ReadVariableOp_1)batch_normalization_1250/ReadVariableOp_12t
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOp8batch_normalization_1251/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1251/ReadVariableOp'batch_normalization_1251/ReadVariableOp2V
)batch_normalization_1251/ReadVariableOp_1)batch_normalization_1251/ReadVariableOp_12f
1batch_normalization_1252/batchnorm/ReadVariableOp1batch_normalization_1252/batchnorm/ReadVariableOp2j
3batch_normalization_1252/batchnorm/ReadVariableOp_13batch_normalization_1252/batchnorm/ReadVariableOp_12j
3batch_normalization_1252/batchnorm/ReadVariableOp_23batch_normalization_1252/batchnorm/ReadVariableOp_22n
5batch_normalization_1252/batchnorm/mul/ReadVariableOp5batch_normalization_1252/batchnorm/mul/ReadVariableOp2H
"conv2d_1199/BiasAdd/ReadVariableOp"conv2d_1199/BiasAdd/ReadVariableOp2F
!conv2d_1199/Conv2D/ReadVariableOp!conv2d_1199/Conv2D/ReadVariableOp2H
"conv2d_1200/BiasAdd/ReadVariableOp"conv2d_1200/BiasAdd/ReadVariableOp2F
!conv2d_1200/Conv2D/ReadVariableOp!conv2d_1200/Conv2D/ReadVariableOp2H
"conv2d_1201/BiasAdd/ReadVariableOp"conv2d_1201/BiasAdd/ReadVariableOp2F
!conv2d_1201/Conv2D/ReadVariableOp!conv2d_1201/Conv2D/ReadVariableOp2H
"conv2d_1202/BiasAdd/ReadVariableOp"conv2d_1202/BiasAdd/ReadVariableOp2F
!conv2d_1202/Conv2D/ReadVariableOp!conv2d_1202/Conv2D/ReadVariableOp2D
 dense_150/BiasAdd/ReadVariableOp dense_150/BiasAdd/ReadVariableOp2B
dense_150/MatMul/ReadVariableOpdense_150/MatMul/ReadVariableOp2D
 dense_151/BiasAdd/ReadVariableOp dense_151/BiasAdd/ReadVariableOp2B
dense_151/MatMul/ReadVariableOpdense_151/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
і

Б
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_4226531

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
м
h
L__inference_activation_1348_layer_call_and_return_conditional_losses_4226755

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:€€€€€€€€€
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4226942

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р
g
H__inference_dropout_202_layer_call_and_return_conditional_losses_4226906

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р
g
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228808

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4225922

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
÷	
ш
F__inference_dense_151_layer_call_and_return_conditional_losses_4226744

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
h
L__inference_activation_1347_layer_call_and_return_conditional_losses_4226716

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Х
f
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228796

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Х*
т
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228912

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradient•
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≥
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decay•
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/mulњ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЂ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp°
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mul…
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/add_1М
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228685

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
и
h
L__inference_activation_1347_layer_call_and_return_conditional_losses_4228853

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™
’
:__inference_batch_normalization_1248_layer_call_fn_4228305

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_42271452
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Д
h
L__inference_activation_1344_layer_call_and_return_conditional_losses_4226542

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
п
M
1__inference_activation_1346_layer_call_fn_4228667

inputs
identity’
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1346_layer_call_and_return_conditional_losses_42266502
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Д
h
L__inference_activation_1343_layer_call_and_return_conditional_losses_4226492

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Х
f
H__inference_dropout_201_layer_call_and_return_conditional_losses_4226577

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4226186

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Эђ
¶(
 __inference__traced_save_4229272
file_prefix1
-savev2_conv2d_1199_kernel_read_readvariableop/
+savev2_conv2d_1199_bias_read_readvariableop=
9savev2_batch_normalization_1248_gamma_read_readvariableop<
8savev2_batch_normalization_1248_beta_read_readvariableopC
?savev2_batch_normalization_1248_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1248_moving_variance_read_readvariableop1
-savev2_conv2d_1200_kernel_read_readvariableop/
+savev2_conv2d_1200_bias_read_readvariableop=
9savev2_batch_normalization_1249_gamma_read_readvariableop<
8savev2_batch_normalization_1249_beta_read_readvariableopC
?savev2_batch_normalization_1249_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1249_moving_variance_read_readvariableop1
-savev2_conv2d_1201_kernel_read_readvariableop/
+savev2_conv2d_1201_bias_read_readvariableop=
9savev2_batch_normalization_1250_gamma_read_readvariableop<
8savev2_batch_normalization_1250_beta_read_readvariableopC
?savev2_batch_normalization_1250_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1250_moving_variance_read_readvariableop1
-savev2_conv2d_1202_kernel_read_readvariableop/
+savev2_conv2d_1202_bias_read_readvariableop=
9savev2_batch_normalization_1251_gamma_read_readvariableop<
8savev2_batch_normalization_1251_beta_read_readvariableopC
?savev2_batch_normalization_1251_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1251_moving_variance_read_readvariableop/
+savev2_dense_150_kernel_read_readvariableop-
)savev2_dense_150_bias_read_readvariableop=
9savev2_batch_normalization_1252_gamma_read_readvariableop<
8savev2_batch_normalization_1252_beta_read_readvariableopC
?savev2_batch_normalization_1252_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1252_moving_variance_read_readvariableop/
+savev2_dense_151_kernel_read_readvariableop-
)savev2_dense_151_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv2d_1199_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1199_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1248_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1248_beta_m_read_readvariableop8
4savev2_adam_conv2d_1200_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1200_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1249_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1249_beta_m_read_readvariableop8
4savev2_adam_conv2d_1201_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1201_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1250_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1250_beta_m_read_readvariableop8
4savev2_adam_conv2d_1202_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1202_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1251_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1251_beta_m_read_readvariableop6
2savev2_adam_dense_150_kernel_m_read_readvariableop4
0savev2_adam_dense_150_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1252_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1252_beta_m_read_readvariableop6
2savev2_adam_dense_151_kernel_m_read_readvariableop4
0savev2_adam_dense_151_bias_m_read_readvariableop8
4savev2_adam_conv2d_1199_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1199_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1248_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1248_beta_v_read_readvariableop8
4savev2_adam_conv2d_1200_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1200_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1249_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1249_beta_v_read_readvariableop8
4savev2_adam_conv2d_1201_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1201_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1250_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1250_beta_v_read_readvariableop8
4savev2_adam_conv2d_1202_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1202_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1251_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1251_beta_v_read_readvariableop6
2savev2_adam_dense_150_kernel_v_read_readvariableop4
0savev2_adam_dense_150_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1252_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1252_beta_v_read_readvariableop6
2savev2_adam_dense_151_kernel_v_read_readvariableop4
0savev2_adam_dense_151_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename…/
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*џ.
value—.Bќ.VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЈ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*Ѕ
valueЈBіVB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesф&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_1199_kernel_read_readvariableop+savev2_conv2d_1199_bias_read_readvariableop9savev2_batch_normalization_1248_gamma_read_readvariableop8savev2_batch_normalization_1248_beta_read_readvariableop?savev2_batch_normalization_1248_moving_mean_read_readvariableopCsavev2_batch_normalization_1248_moving_variance_read_readvariableop-savev2_conv2d_1200_kernel_read_readvariableop+savev2_conv2d_1200_bias_read_readvariableop9savev2_batch_normalization_1249_gamma_read_readvariableop8savev2_batch_normalization_1249_beta_read_readvariableop?savev2_batch_normalization_1249_moving_mean_read_readvariableopCsavev2_batch_normalization_1249_moving_variance_read_readvariableop-savev2_conv2d_1201_kernel_read_readvariableop+savev2_conv2d_1201_bias_read_readvariableop9savev2_batch_normalization_1250_gamma_read_readvariableop8savev2_batch_normalization_1250_beta_read_readvariableop?savev2_batch_normalization_1250_moving_mean_read_readvariableopCsavev2_batch_normalization_1250_moving_variance_read_readvariableop-savev2_conv2d_1202_kernel_read_readvariableop+savev2_conv2d_1202_bias_read_readvariableop9savev2_batch_normalization_1251_gamma_read_readvariableop8savev2_batch_normalization_1251_beta_read_readvariableop?savev2_batch_normalization_1251_moving_mean_read_readvariableopCsavev2_batch_normalization_1251_moving_variance_read_readvariableop+savev2_dense_150_kernel_read_readvariableop)savev2_dense_150_bias_read_readvariableop9savev2_batch_normalization_1252_gamma_read_readvariableop8savev2_batch_normalization_1252_beta_read_readvariableop?savev2_batch_normalization_1252_moving_mean_read_readvariableopCsavev2_batch_normalization_1252_moving_variance_read_readvariableop+savev2_dense_151_kernel_read_readvariableop)savev2_dense_151_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv2d_1199_kernel_m_read_readvariableop2savev2_adam_conv2d_1199_bias_m_read_readvariableop@savev2_adam_batch_normalization_1248_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1248_beta_m_read_readvariableop4savev2_adam_conv2d_1200_kernel_m_read_readvariableop2savev2_adam_conv2d_1200_bias_m_read_readvariableop@savev2_adam_batch_normalization_1249_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1249_beta_m_read_readvariableop4savev2_adam_conv2d_1201_kernel_m_read_readvariableop2savev2_adam_conv2d_1201_bias_m_read_readvariableop@savev2_adam_batch_normalization_1250_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1250_beta_m_read_readvariableop4savev2_adam_conv2d_1202_kernel_m_read_readvariableop2savev2_adam_conv2d_1202_bias_m_read_readvariableop@savev2_adam_batch_normalization_1251_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1251_beta_m_read_readvariableop2savev2_adam_dense_150_kernel_m_read_readvariableop0savev2_adam_dense_150_bias_m_read_readvariableop@savev2_adam_batch_normalization_1252_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1252_beta_m_read_readvariableop2savev2_adam_dense_151_kernel_m_read_readvariableop0savev2_adam_dense_151_bias_m_read_readvariableop4savev2_adam_conv2d_1199_kernel_v_read_readvariableop2savev2_adam_conv2d_1199_bias_v_read_readvariableop@savev2_adam_batch_normalization_1248_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1248_beta_v_read_readvariableop4savev2_adam_conv2d_1200_kernel_v_read_readvariableop2savev2_adam_conv2d_1200_bias_v_read_readvariableop@savev2_adam_batch_normalization_1249_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1249_beta_v_read_readvariableop4savev2_adam_conv2d_1201_kernel_v_read_readvariableop2savev2_adam_conv2d_1201_bias_v_read_readvariableop@savev2_adam_batch_normalization_1250_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1250_beta_v_read_readvariableop4savev2_adam_conv2d_1202_kernel_v_read_readvariableop2savev2_adam_conv2d_1202_bias_v_read_readvariableop@savev2_adam_batch_normalization_1251_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1251_beta_v_read_readvariableop2savev2_adam_dense_150_kernel_v_read_readvariableop0savev2_adam_dense_150_bias_v_read_readvariableop@savev2_adam_batch_normalization_1252_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1252_beta_v_read_readvariableop2savev2_adam_dense_151_kernel_v_read_readvariableop0savev2_adam_dense_151_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ѓ
_input_shapesЭ
Ъ: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:
А А:А:А:А:А:А:	А
:
: : : : : : : : : : : : : :  : : : : @:@:@:@:@@:@:@:@:
А А:А:А:А:	А
:
: : : : :  : : : : @:@:@:@:@@:@:@:@:
А А:А:А:А:	А
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
А А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:%!

_output_shapes
:	А
:  

_output_shapes
:
:!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
:  : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: @: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:&:"
 
_output_shapes
:
А А:!;

_output_shapes	
:А:!<

_output_shapes	
:А:!=

_output_shapes	
:А:%>!

_output_shapes
:	А
: ?

_output_shapes
:
:,@(
&
_output_shapes
: : A

_output_shapes
: : B

_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
:  : E

_output_shapes
: : F

_output_shapes
: : G

_output_shapes
: :,H(
&
_output_shapes
: @: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@@: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:&P"
 
_output_shapes
:
А А:!Q

_output_shapes	
:А:!R

_output_shapes	
:А:!S

_output_shapes	
:А:%T!

_output_shapes
:	А
: U

_output_shapes
:
:V

_output_shapes
: 
Ј
g
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228955

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228550

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ы
ƒ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228253

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
й
c
G__inference_flatten_97_layer_call_and_return_conditional_losses_4228824

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
т
’
:__inference_batch_normalization_1248_layer_call_fn_4228279

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_42258402
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4226669

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џХ
¶!
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4228014

inputsD
*conv2d_1199_conv2d_readvariableop_resource: 9
+conv2d_1199_biasadd_readvariableop_resource: >
0batch_normalization_1248_readvariableop_resource: @
2batch_normalization_1248_readvariableop_1_resource: O
Abatch_normalization_1248_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1200_conv2d_readvariableop_resource:  9
+conv2d_1200_biasadd_readvariableop_resource: >
0batch_normalization_1249_readvariableop_resource: @
2batch_normalization_1249_readvariableop_1_resource: O
Abatch_normalization_1249_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1201_conv2d_readvariableop_resource: @9
+conv2d_1201_biasadd_readvariableop_resource:@>
0batch_normalization_1250_readvariableop_resource:@@
2batch_normalization_1250_readvariableop_1_resource:@O
Abatch_normalization_1250_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource:@D
*conv2d_1202_conv2d_readvariableop_resource:@@9
+conv2d_1202_biasadd_readvariableop_resource:@>
0batch_normalization_1251_readvariableop_resource:@@
2batch_normalization_1251_readvariableop_1_resource:@O
Abatch_normalization_1251_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_150_matmul_readvariableop_resource:
А А8
)dense_150_biasadd_readvariableop_resource:	АO
@batch_normalization_1252_assignmovingavg_readvariableop_resource:	АQ
Bbatch_normalization_1252_assignmovingavg_1_readvariableop_resource:	АM
>batch_normalization_1252_batchnorm_mul_readvariableop_resource:	АI
:batch_normalization_1252_batchnorm_readvariableop_resource:	А;
(dense_151_matmul_readvariableop_resource:	А
7
)dense_151_biasadd_readvariableop_resource:

identityИҐ'batch_normalization_1248/AssignNewValueҐ)batch_normalization_1248/AssignNewValue_1Ґ8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1248/ReadVariableOpҐ)batch_normalization_1248/ReadVariableOp_1Ґ'batch_normalization_1249/AssignNewValueҐ)batch_normalization_1249/AssignNewValue_1Ґ8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1249/ReadVariableOpҐ)batch_normalization_1249/ReadVariableOp_1Ґ'batch_normalization_1250/AssignNewValueҐ)batch_normalization_1250/AssignNewValue_1Ґ8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1250/ReadVariableOpҐ)batch_normalization_1250/ReadVariableOp_1Ґ'batch_normalization_1251/AssignNewValueҐ)batch_normalization_1251/AssignNewValue_1Ґ8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpҐ:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1Ґ'batch_normalization_1251/ReadVariableOpҐ)batch_normalization_1251/ReadVariableOp_1Ґ(batch_normalization_1252/AssignMovingAvgҐ7batch_normalization_1252/AssignMovingAvg/ReadVariableOpҐ*batch_normalization_1252/AssignMovingAvg_1Ґ9batch_normalization_1252/AssignMovingAvg_1/ReadVariableOpҐ1batch_normalization_1252/batchnorm/ReadVariableOpҐ5batch_normalization_1252/batchnorm/mul/ReadVariableOpҐ"conv2d_1199/BiasAdd/ReadVariableOpҐ!conv2d_1199/Conv2D/ReadVariableOpҐ"conv2d_1200/BiasAdd/ReadVariableOpҐ!conv2d_1200/Conv2D/ReadVariableOpҐ"conv2d_1201/BiasAdd/ReadVariableOpҐ!conv2d_1201/Conv2D/ReadVariableOpҐ"conv2d_1202/BiasAdd/ReadVariableOpҐ!conv2d_1202/Conv2D/ReadVariableOpҐ dense_150/BiasAdd/ReadVariableOpҐdense_150/MatMul/ReadVariableOpҐ dense_151/BiasAdd/ReadVariableOpҐdense_151/MatMul/ReadVariableOpє
!conv2d_1199/Conv2D/ReadVariableOpReadVariableOp*conv2d_1199_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1199/Conv2D/ReadVariableOp«
conv2d_1199/Conv2DConv2Dinputs)conv2d_1199/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_1199/Conv2D∞
"conv2d_1199/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1199_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1199/BiasAdd/ReadVariableOpЄ
conv2d_1199/BiasAddBiasAddconv2d_1199/Conv2D:output:0*conv2d_1199/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_1199/BiasAddМ
activation_1343/ReluReluconv2d_1199/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_1343/Reluњ
'batch_normalization_1248/ReadVariableOpReadVariableOp0batch_normalization_1248_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1248/ReadVariableOp≈
)batch_normalization_1248/ReadVariableOp_1ReadVariableOp2batch_normalization_1248_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1248/ReadVariableOp_1т
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1248_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1К
)batch_normalization_1248/FusedBatchNormV3FusedBatchNormV3"activation_1343/Relu:activations:0/batch_normalization_1248/ReadVariableOp:value:01batch_normalization_1248/ReadVariableOp_1:value:0@batch_normalization_1248/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2+
)batch_normalization_1248/FusedBatchNormV3њ
'batch_normalization_1248/AssignNewValueAssignVariableOpAbatch_normalization_1248_fusedbatchnormv3_readvariableop_resource6batch_normalization_1248/FusedBatchNormV3:batch_mean:09^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1248/AssignNewValueЋ
)batch_normalization_1248/AssignNewValue_1AssignVariableOpCbatch_normalization_1248_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1248/FusedBatchNormV3:batch_variance:0;^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1248/AssignNewValue_1є
!conv2d_1200/Conv2D/ReadVariableOpReadVariableOp*conv2d_1200_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02#
!conv2d_1200/Conv2D/ReadVariableOpо
conv2d_1200/Conv2DConv2D-batch_normalization_1248/FusedBatchNormV3:y:0)conv2d_1200/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_1200/Conv2D∞
"conv2d_1200/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1200_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1200/BiasAdd/ReadVariableOpЄ
conv2d_1200/BiasAddBiasAddconv2d_1200/Conv2D:output:0*conv2d_1200/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_1200/BiasAddМ
activation_1344/ReluReluconv2d_1200/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_1344/Reluњ
'batch_normalization_1249/ReadVariableOpReadVariableOp0batch_normalization_1249_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1249/ReadVariableOp≈
)batch_normalization_1249/ReadVariableOp_1ReadVariableOp2batch_normalization_1249_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1249/ReadVariableOp_1т
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1249_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1К
)batch_normalization_1249/FusedBatchNormV3FusedBatchNormV3"activation_1344/Relu:activations:0/batch_normalization_1249/ReadVariableOp:value:01batch_normalization_1249/ReadVariableOp_1:value:0@batch_normalization_1249/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2+
)batch_normalization_1249/FusedBatchNormV3њ
'batch_normalization_1249/AssignNewValueAssignVariableOpAbatch_normalization_1249_fusedbatchnormv3_readvariableop_resource6batch_normalization_1249/FusedBatchNormV3:batch_mean:09^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1249/AssignNewValueЋ
)batch_normalization_1249/AssignNewValue_1AssignVariableOpCbatch_normalization_1249_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1249/FusedBatchNormV3:batch_variance:0;^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1249/AssignNewValue_1Ё
max_pooling2d_192/MaxPoolMaxPool-batch_normalization_1249/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_192/MaxPool{
dropout_201/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout_201/dropout/Constї
dropout_201/dropout/MulMul"max_pooling2d_192/MaxPool:output:0"dropout_201/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_201/dropout/MulИ
dropout_201/dropout/ShapeShape"max_pooling2d_192/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_201/dropout/Shapeа
0dropout_201/dropout/random_uniform/RandomUniformRandomUniform"dropout_201/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype022
0dropout_201/dropout/random_uniform/RandomUniformН
"dropout_201/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2$
"dropout_201/dropout/GreaterEqual/yц
 dropout_201/dropout/GreaterEqualGreaterEqual9dropout_201/dropout/random_uniform/RandomUniform:output:0+dropout_201/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 dropout_201/dropout/GreaterEqualЂ
dropout_201/dropout/CastCast$dropout_201/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout_201/dropout/Cast≤
dropout_201/dropout/Mul_1Muldropout_201/dropout/Mul:z:0dropout_201/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_201/dropout/Mul_1є
!conv2d_1201/Conv2D/ReadVariableOpReadVariableOp*conv2d_1201_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1201/Conv2D/ReadVariableOpё
conv2d_1201/Conv2DConv2Ddropout_201/dropout/Mul_1:z:0)conv2d_1201/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_1201/Conv2D∞
"conv2d_1201/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1201_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1201/BiasAdd/ReadVariableOpЄ
conv2d_1201/BiasAddBiasAddconv2d_1201/Conv2D:output:0*conv2d_1201/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_1201/BiasAddМ
activation_1345/ReluReluconv2d_1201/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_1345/Reluњ
'batch_normalization_1250/ReadVariableOpReadVariableOp0batch_normalization_1250_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1250/ReadVariableOp≈
)batch_normalization_1250/ReadVariableOp_1ReadVariableOp2batch_normalization_1250_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1250/ReadVariableOp_1т
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1250_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1К
)batch_normalization_1250/FusedBatchNormV3FusedBatchNormV3"activation_1345/Relu:activations:0/batch_normalization_1250/ReadVariableOp:value:01batch_normalization_1250/ReadVariableOp_1:value:0@batch_normalization_1250/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2+
)batch_normalization_1250/FusedBatchNormV3њ
'batch_normalization_1250/AssignNewValueAssignVariableOpAbatch_normalization_1250_fusedbatchnormv3_readvariableop_resource6batch_normalization_1250/FusedBatchNormV3:batch_mean:09^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1250/AssignNewValueЋ
)batch_normalization_1250/AssignNewValue_1AssignVariableOpCbatch_normalization_1250_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1250/FusedBatchNormV3:batch_variance:0;^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1250/AssignNewValue_1є
!conv2d_1202/Conv2D/ReadVariableOpReadVariableOp*conv2d_1202_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02#
!conv2d_1202/Conv2D/ReadVariableOpо
conv2d_1202/Conv2DConv2D-batch_normalization_1250/FusedBatchNormV3:y:0)conv2d_1202/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_1202/Conv2D∞
"conv2d_1202/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1202_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1202/BiasAdd/ReadVariableOpЄ
conv2d_1202/BiasAddBiasAddconv2d_1202/Conv2D:output:0*conv2d_1202/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_1202/BiasAddМ
activation_1346/ReluReluconv2d_1202/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_1346/Reluњ
'batch_normalization_1251/ReadVariableOpReadVariableOp0batch_normalization_1251_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1251/ReadVariableOp≈
)batch_normalization_1251/ReadVariableOp_1ReadVariableOp2batch_normalization_1251_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1251/ReadVariableOp_1т
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1251_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOpш
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1К
)batch_normalization_1251/FusedBatchNormV3FusedBatchNormV3"activation_1346/Relu:activations:0/batch_normalization_1251/ReadVariableOp:value:01batch_normalization_1251/ReadVariableOp_1:value:0@batch_normalization_1251/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2+
)batch_normalization_1251/FusedBatchNormV3њ
'batch_normalization_1251/AssignNewValueAssignVariableOpAbatch_normalization_1251_fusedbatchnormv3_readvariableop_resource6batch_normalization_1251/FusedBatchNormV3:batch_mean:09^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1251/AssignNewValueЋ
)batch_normalization_1251/AssignNewValue_1AssignVariableOpCbatch_normalization_1251_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1251/FusedBatchNormV3:batch_variance:0;^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1251/AssignNewValue_1Ё
max_pooling2d_193/MaxPoolMaxPool-batch_normalization_1251/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_193/MaxPool{
dropout_202/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™?2
dropout_202/dropout/Constї
dropout_202/dropout/MulMul"max_pooling2d_193/MaxPool:output:0"dropout_202/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_202/dropout/MulИ
dropout_202/dropout/ShapeShape"max_pooling2d_193/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_202/dropout/Shapeа
0dropout_202/dropout/random_uniform/RandomUniformRandomUniform"dropout_202/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype022
0dropout_202/dropout/random_uniform/RandomUniformН
"dropout_202/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2$
"dropout_202/dropout/GreaterEqual/yц
 dropout_202/dropout/GreaterEqualGreaterEqual9dropout_202/dropout/random_uniform/RandomUniform:output:0+dropout_202/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2"
 dropout_202/dropout/GreaterEqualЂ
dropout_202/dropout/CastCast$dropout_202/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout_202/dropout/Cast≤
dropout_202/dropout/Mul_1Muldropout_202/dropout/Mul:z:0dropout_202/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_202/dropout/Mul_1u
flatten_97/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_97/Const†
flatten_97/ReshapeReshapedropout_202/dropout/Mul_1:z:0flatten_97/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2
flatten_97/Reshape≠
dense_150/MatMul/ReadVariableOpReadVariableOp(dense_150_matmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02!
dense_150/MatMul/ReadVariableOpІ
dense_150/MatMulMatMulflatten_97/Reshape:output:0'dense_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_150/MatMulЂ
 dense_150/BiasAdd/ReadVariableOpReadVariableOp)dense_150_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 dense_150/BiasAdd/ReadVariableOp™
dense_150/BiasAddBiasAdddense_150/MatMul:product:0(dense_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_150/BiasAddГ
activation_1347/ReluReludense_150/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
activation_1347/ReluЉ
7batch_normalization_1252/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 29
7batch_normalization_1252/moments/mean/reduction_indicesч
%batch_normalization_1252/moments/meanMean"activation_1347/Relu:activations:0@batch_normalization_1252/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2'
%batch_normalization_1252/moments/mean»
-batch_normalization_1252/moments/StopGradientStopGradient.batch_normalization_1252/moments/mean:output:0*
T0*
_output_shapes
:	А2/
-batch_normalization_1252/moments/StopGradientМ
2batch_normalization_1252/moments/SquaredDifferenceSquaredDifference"activation_1347/Relu:activations:06batch_normalization_1252/moments/StopGradient:output:0*
T0*(
_output_shapes
:€€€€€€€€€А24
2batch_normalization_1252/moments/SquaredDifferenceƒ
;batch_normalization_1252/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2=
;batch_normalization_1252/moments/variance/reduction_indicesЧ
)batch_normalization_1252/moments/varianceMean6batch_normalization_1252/moments/SquaredDifference:z:0Dbatch_normalization_1252/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2+
)batch_normalization_1252/moments/varianceћ
(batch_normalization_1252/moments/SqueezeSqueeze.batch_normalization_1252/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2*
(batch_normalization_1252/moments/Squeeze‘
*batch_normalization_1252/moments/Squeeze_1Squeeze2batch_normalization_1252/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2,
*batch_normalization_1252/moments/Squeeze_1•
.batch_normalization_1252/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<20
.batch_normalization_1252/AssignMovingAvg/decayр
7batch_normalization_1252/AssignMovingAvg/ReadVariableOpReadVariableOp@batch_normalization_1252_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_1252/AssignMovingAvg/ReadVariableOpэ
,batch_normalization_1252/AssignMovingAvg/subSub?batch_normalization_1252/AssignMovingAvg/ReadVariableOp:value:01batch_normalization_1252/moments/Squeeze:output:0*
T0*
_output_shapes	
:А2.
,batch_normalization_1252/AssignMovingAvg/subф
,batch_normalization_1252/AssignMovingAvg/mulMul0batch_normalization_1252/AssignMovingAvg/sub:z:07batch_normalization_1252/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2.
,batch_normalization_1252/AssignMovingAvg/mulЉ
(batch_normalization_1252/AssignMovingAvgAssignSubVariableOp@batch_normalization_1252_assignmovingavg_readvariableop_resource0batch_normalization_1252/AssignMovingAvg/mul:z:08^batch_normalization_1252/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_1252/AssignMovingAvg©
0batch_normalization_1252/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<22
0batch_normalization_1252/AssignMovingAvg_1/decayц
9batch_normalization_1252/AssignMovingAvg_1/ReadVariableOpReadVariableOpBbatch_normalization_1252_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9batch_normalization_1252/AssignMovingAvg_1/ReadVariableOpЕ
.batch_normalization_1252/AssignMovingAvg_1/subSubAbatch_normalization_1252/AssignMovingAvg_1/ReadVariableOp:value:03batch_normalization_1252/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А20
.batch_normalization_1252/AssignMovingAvg_1/subь
.batch_normalization_1252/AssignMovingAvg_1/mulMul2batch_normalization_1252/AssignMovingAvg_1/sub:z:09batch_normalization_1252/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А20
.batch_normalization_1252/AssignMovingAvg_1/mul∆
*batch_normalization_1252/AssignMovingAvg_1AssignSubVariableOpBbatch_normalization_1252_assignmovingavg_1_readvariableop_resource2batch_normalization_1252/AssignMovingAvg_1/mul:z:0:^batch_normalization_1252/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02,
*batch_normalization_1252/AssignMovingAvg_1Щ
(batch_normalization_1252/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2*
(batch_normalization_1252/batchnorm/add/yз
&batch_normalization_1252/batchnorm/addAddV23batch_normalization_1252/moments/Squeeze_1:output:01batch_normalization_1252/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/addѓ
(batch_normalization_1252/batchnorm/RsqrtRsqrt*batch_normalization_1252/batchnorm/add:z:0*
T0*
_output_shapes	
:А2*
(batch_normalization_1252/batchnorm/Rsqrtк
5batch_normalization_1252/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1252_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_1252/batchnorm/mul/ReadVariableOpк
&batch_normalization_1252/batchnorm/mulMul,batch_normalization_1252/batchnorm/Rsqrt:y:0=batch_normalization_1252/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/mulё
(batch_normalization_1252/batchnorm/mul_1Mul"activation_1347/Relu:activations:0*batch_normalization_1252/batchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(batch_normalization_1252/batchnorm/mul_1а
(batch_normalization_1252/batchnorm/mul_2Mul1batch_normalization_1252/moments/Squeeze:output:0*batch_normalization_1252/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2*
(batch_normalization_1252/batchnorm/mul_2ё
1batch_normalization_1252/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1252_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_1252/batchnorm/ReadVariableOpж
&batch_normalization_1252/batchnorm/subSub9batch_normalization_1252/batchnorm/ReadVariableOp:value:0,batch_normalization_1252/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_1252/batchnorm/subк
(batch_normalization_1252/batchnorm/add_1AddV2,batch_normalization_1252/batchnorm/mul_1:z:0*batch_normalization_1252/batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(batch_normalization_1252/batchnorm/add_1{
dropout_203/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_203/dropout/ConstЊ
dropout_203/dropout/MulMul,batch_normalization_1252/batchnorm/add_1:z:0"dropout_203/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_203/dropout/MulТ
dropout_203/dropout/ShapeShape,batch_normalization_1252/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_203/dropout/Shapeў
0dropout_203/dropout/random_uniform/RandomUniformRandomUniform"dropout_203/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype022
0dropout_203/dropout/random_uniform/RandomUniformН
"dropout_203/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_203/dropout/GreaterEqual/yп
 dropout_203/dropout/GreaterEqualGreaterEqual9dropout_203/dropout/random_uniform/RandomUniform:output:0+dropout_203/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 dropout_203/dropout/GreaterEqual§
dropout_203/dropout/CastCast$dropout_203/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout_203/dropout/CastЂ
dropout_203/dropout/Mul_1Muldropout_203/dropout/Mul:z:0dropout_203/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_203/dropout/Mul_1ђ
dense_151/MatMul/ReadVariableOpReadVariableOp(dense_151_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02!
dense_151/MatMul/ReadVariableOp®
dense_151/MatMulMatMuldropout_203/dropout/Mul_1:z:0'dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_151/MatMul™
 dense_151/BiasAdd/ReadVariableOpReadVariableOp)dense_151_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_151/BiasAdd/ReadVariableOp©
dense_151/BiasAddBiasAdddense_151/MatMul:product:0(dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_151/BiasAddЛ
activation_1348/SoftmaxSoftmaxdense_151/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
activation_1348/Softmaxн
IdentityIdentity!activation_1348/Softmax:softmax:0(^batch_normalization_1248/AssignNewValue*^batch_normalization_1248/AssignNewValue_19^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1248/ReadVariableOp*^batch_normalization_1248/ReadVariableOp_1(^batch_normalization_1249/AssignNewValue*^batch_normalization_1249/AssignNewValue_19^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1249/ReadVariableOp*^batch_normalization_1249/ReadVariableOp_1(^batch_normalization_1250/AssignNewValue*^batch_normalization_1250/AssignNewValue_19^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1250/ReadVariableOp*^batch_normalization_1250/ReadVariableOp_1(^batch_normalization_1251/AssignNewValue*^batch_normalization_1251/AssignNewValue_19^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1251/ReadVariableOp*^batch_normalization_1251/ReadVariableOp_1)^batch_normalization_1252/AssignMovingAvg8^batch_normalization_1252/AssignMovingAvg/ReadVariableOp+^batch_normalization_1252/AssignMovingAvg_1:^batch_normalization_1252/AssignMovingAvg_1/ReadVariableOp2^batch_normalization_1252/batchnorm/ReadVariableOp6^batch_normalization_1252/batchnorm/mul/ReadVariableOp#^conv2d_1199/BiasAdd/ReadVariableOp"^conv2d_1199/Conv2D/ReadVariableOp#^conv2d_1200/BiasAdd/ReadVariableOp"^conv2d_1200/Conv2D/ReadVariableOp#^conv2d_1201/BiasAdd/ReadVariableOp"^conv2d_1201/Conv2D/ReadVariableOp#^conv2d_1202/BiasAdd/ReadVariableOp"^conv2d_1202/Conv2D/ReadVariableOp!^dense_150/BiasAdd/ReadVariableOp ^dense_150/MatMul/ReadVariableOp!^dense_151/BiasAdd/ReadVariableOp ^dense_151/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_1248/AssignNewValue'batch_normalization_1248/AssignNewValue2V
)batch_normalization_1248/AssignNewValue_1)batch_normalization_1248/AssignNewValue_12t
8batch_normalization_1248/FusedBatchNormV3/ReadVariableOp8batch_normalization_1248/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1248/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1248/ReadVariableOp'batch_normalization_1248/ReadVariableOp2V
)batch_normalization_1248/ReadVariableOp_1)batch_normalization_1248/ReadVariableOp_12R
'batch_normalization_1249/AssignNewValue'batch_normalization_1249/AssignNewValue2V
)batch_normalization_1249/AssignNewValue_1)batch_normalization_1249/AssignNewValue_12t
8batch_normalization_1249/FusedBatchNormV3/ReadVariableOp8batch_normalization_1249/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1249/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1249/ReadVariableOp'batch_normalization_1249/ReadVariableOp2V
)batch_normalization_1249/ReadVariableOp_1)batch_normalization_1249/ReadVariableOp_12R
'batch_normalization_1250/AssignNewValue'batch_normalization_1250/AssignNewValue2V
)batch_normalization_1250/AssignNewValue_1)batch_normalization_1250/AssignNewValue_12t
8batch_normalization_1250/FusedBatchNormV3/ReadVariableOp8batch_normalization_1250/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1250/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1250/ReadVariableOp'batch_normalization_1250/ReadVariableOp2V
)batch_normalization_1250/ReadVariableOp_1)batch_normalization_1250/ReadVariableOp_12R
'batch_normalization_1251/AssignNewValue'batch_normalization_1251/AssignNewValue2V
)batch_normalization_1251/AssignNewValue_1)batch_normalization_1251/AssignNewValue_12t
8batch_normalization_1251/FusedBatchNormV3/ReadVariableOp8batch_normalization_1251/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1251/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1251/ReadVariableOp'batch_normalization_1251/ReadVariableOp2V
)batch_normalization_1251/ReadVariableOp_1)batch_normalization_1251/ReadVariableOp_12T
(batch_normalization_1252/AssignMovingAvg(batch_normalization_1252/AssignMovingAvg2r
7batch_normalization_1252/AssignMovingAvg/ReadVariableOp7batch_normalization_1252/AssignMovingAvg/ReadVariableOp2X
*batch_normalization_1252/AssignMovingAvg_1*batch_normalization_1252/AssignMovingAvg_12v
9batch_normalization_1252/AssignMovingAvg_1/ReadVariableOp9batch_normalization_1252/AssignMovingAvg_1/ReadVariableOp2f
1batch_normalization_1252/batchnorm/ReadVariableOp1batch_normalization_1252/batchnorm/ReadVariableOp2n
5batch_normalization_1252/batchnorm/mul/ReadVariableOp5batch_normalization_1252/batchnorm/mul/ReadVariableOp2H
"conv2d_1199/BiasAdd/ReadVariableOp"conv2d_1199/BiasAdd/ReadVariableOp2F
!conv2d_1199/Conv2D/ReadVariableOp!conv2d_1199/Conv2D/ReadVariableOp2H
"conv2d_1200/BiasAdd/ReadVariableOp"conv2d_1200/BiasAdd/ReadVariableOp2F
!conv2d_1200/Conv2D/ReadVariableOp!conv2d_1200/Conv2D/ReadVariableOp2H
"conv2d_1201/BiasAdd/ReadVariableOp"conv2d_1201/BiasAdd/ReadVariableOp2F
!conv2d_1201/Conv2D/ReadVariableOp!conv2d_1201/Conv2D/ReadVariableOp2H
"conv2d_1202/BiasAdd/ReadVariableOp"conv2d_1202/BiasAdd/ReadVariableOp2F
!conv2d_1202/Conv2D/ReadVariableOp!conv2d_1202/Conv2D/ReadVariableOp2D
 dense_150/BiasAdd/ReadVariableOp dense_150/BiasAdd/ReadVariableOp2B
dense_150/MatMul/ReadVariableOpdense_150/MatMul/ReadVariableOp2D
 dense_151/BiasAdd/ReadVariableOp dense_151/BiasAdd/ReadVariableOp2B
dense_151/MatMul/ReadVariableOpdense_151/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228568

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4226104

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ё	
ъ
F__inference_dense_150_layer_call_and_return_conditional_losses_4228839

inputs2
matmul_readvariableop_resource:
А А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
ђ
’
:__inference_batch_normalization_1251_layer_call_fn_4228778

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_42266692
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Аw
ё
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227652
conv2d_1199_input-
conv2d_1199_4227564: !
conv2d_1199_4227566: .
 batch_normalization_1248_4227570: .
 batch_normalization_1248_4227572: .
 batch_normalization_1248_4227574: .
 batch_normalization_1248_4227576: -
conv2d_1200_4227579:  !
conv2d_1200_4227581: .
 batch_normalization_1249_4227585: .
 batch_normalization_1249_4227587: .
 batch_normalization_1249_4227589: .
 batch_normalization_1249_4227591: -
conv2d_1201_4227596: @!
conv2d_1201_4227598:@.
 batch_normalization_1250_4227602:@.
 batch_normalization_1250_4227604:@.
 batch_normalization_1250_4227606:@.
 batch_normalization_1250_4227608:@-
conv2d_1202_4227611:@@!
conv2d_1202_4227613:@.
 batch_normalization_1251_4227617:@.
 batch_normalization_1251_4227619:@.
 batch_normalization_1251_4227621:@.
 batch_normalization_1251_4227623:@%
dense_150_4227629:
А А 
dense_150_4227631:	А/
 batch_normalization_1252_4227635:	А/
 batch_normalization_1252_4227637:	А/
 batch_normalization_1252_4227639:	А/
 batch_normalization_1252_4227641:	А$
dense_151_4227645:	А

dense_151_4227647:

identityИҐ0batch_normalization_1248/StatefulPartitionedCallҐ0batch_normalization_1249/StatefulPartitionedCallҐ0batch_normalization_1250/StatefulPartitionedCallҐ0batch_normalization_1251/StatefulPartitionedCallҐ0batch_normalization_1252/StatefulPartitionedCallҐ#conv2d_1199/StatefulPartitionedCallҐ#conv2d_1200/StatefulPartitionedCallҐ#conv2d_1201/StatefulPartitionedCallҐ#conv2d_1202/StatefulPartitionedCallҐ!dense_150/StatefulPartitionedCallҐ!dense_151/StatefulPartitionedCallҐ#dropout_201/StatefulPartitionedCallҐ#dropout_202/StatefulPartitionedCallҐ#dropout_203/StatefulPartitionedCallЉ
#conv2d_1199/StatefulPartitionedCallStatefulPartitionedCallconv2d_1199_inputconv2d_1199_4227564conv2d_1199_4227566*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_42264812%
#conv2d_1199/StatefulPartitionedCallЫ
activation_1343/PartitionedCallPartitionedCall,conv2d_1199/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1343_layer_call_and_return_conditional_losses_42264922!
activation_1343/PartitionedCallЏ
0batch_normalization_1248/StatefulPartitionedCallStatefulPartitionedCall(activation_1343/PartitionedCall:output:0 batch_normalization_1248_4227570 batch_normalization_1248_4227572 batch_normalization_1248_4227574 batch_normalization_1248_4227576*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_422714522
0batch_normalization_1248/StatefulPartitionedCallд
#conv2d_1200/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1248/StatefulPartitionedCall:output:0conv2d_1200_4227579conv2d_1200_4227581*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_42265312%
#conv2d_1200/StatefulPartitionedCallЫ
activation_1344/PartitionedCallPartitionedCall,conv2d_1200/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1344_layer_call_and_return_conditional_losses_42265422!
activation_1344/PartitionedCallЏ
0batch_normalization_1249/StatefulPartitionedCallStatefulPartitionedCall(activation_1344/PartitionedCall:output:0 batch_normalization_1249_4227585 batch_normalization_1249_4227587 batch_normalization_1249_4227589 batch_normalization_1249_4227591*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_422708522
0batch_normalization_1249/StatefulPartitionedCallЃ
!max_pooling2d_192/PartitionedCallPartitionedCall9batch_normalization_1249/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_42260322#
!max_pooling2d_192/PartitionedCall•
#dropout_201/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42270492%
#dropout_201/StatefulPartitionedCall„
#conv2d_1201/StatefulPartitionedCallStatefulPartitionedCall,dropout_201/StatefulPartitionedCall:output:0conv2d_1201_4227596conv2d_1201_4227598*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_42265892%
#conv2d_1201/StatefulPartitionedCallЫ
activation_1345/PartitionedCallPartitionedCall,conv2d_1201/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1345_layer_call_and_return_conditional_losses_42266002!
activation_1345/PartitionedCallЏ
0batch_normalization_1250/StatefulPartitionedCallStatefulPartitionedCall(activation_1345/PartitionedCall:output:0 batch_normalization_1250_4227602 batch_normalization_1250_4227604 batch_normalization_1250_4227606 batch_normalization_1250_4227608*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_422700222
0batch_normalization_1250/StatefulPartitionedCallд
#conv2d_1202/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1250/StatefulPartitionedCall:output:0conv2d_1202_4227611conv2d_1202_4227613*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_42266392%
#conv2d_1202/StatefulPartitionedCallЫ
activation_1346/PartitionedCallPartitionedCall,conv2d_1202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1346_layer_call_and_return_conditional_losses_42266502!
activation_1346/PartitionedCallЏ
0batch_normalization_1251/StatefulPartitionedCallStatefulPartitionedCall(activation_1346/PartitionedCall:output:0 batch_normalization_1251_4227617 batch_normalization_1251_4227619 batch_normalization_1251_4227621 batch_normalization_1251_4227623*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_422694222
0batch_normalization_1251/StatefulPartitionedCallЃ
!max_pooling2d_193/PartitionedCallPartitionedCall9batch_normalization_1251/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_42262962#
!max_pooling2d_193/PartitionedCallЋ
#dropout_202/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0$^dropout_201/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_202_layer_call_and_return_conditional_losses_42269062%
#dropout_202/StatefulPartitionedCallЕ
flatten_97/PartitionedCallPartitionedCall,dropout_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_97_layer_call_and_return_conditional_losses_42266932
flatten_97/PartitionedCallљ
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_97/PartitionedCall:output:0dense_150_4227629dense_150_4227631*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_42267052#
!dense_150/StatefulPartitionedCallТ
activation_1347/PartitionedCallPartitionedCall*dense_150/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1347_layer_call_and_return_conditional_losses_42267162!
activation_1347/PartitionedCall”
0batch_normalization_1252/StatefulPartitionedCallStatefulPartitionedCall(activation_1347/PartitionedCall:output:0 batch_normalization_1252_4227635 batch_normalization_1252_4227637 batch_normalization_1252_4227639 batch_normalization_1252_4227641*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_422638622
0batch_normalization_1252/StatefulPartitionedCall”
#dropout_203/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1252/StatefulPartitionedCall:output:0$^dropout_202/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_203_layer_call_and_return_conditional_losses_42268612%
#dropout_203/StatefulPartitionedCall≈
!dense_151/StatefulPartitionedCallStatefulPartitionedCall,dropout_203/StatefulPartitionedCall:output:0dense_151_4227645dense_151_4227647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_42267442#
!dense_151/StatefulPartitionedCallС
activation_1348/PartitionedCallPartitionedCall*dense_151/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1348_layer_call_and_return_conditional_losses_42267552!
activation_1348/PartitionedCallЌ
IdentityIdentity(activation_1348/PartitionedCall:output:01^batch_normalization_1248/StatefulPartitionedCall1^batch_normalization_1249/StatefulPartitionedCall1^batch_normalization_1250/StatefulPartitionedCall1^batch_normalization_1251/StatefulPartitionedCall1^batch_normalization_1252/StatefulPartitionedCall$^conv2d_1199/StatefulPartitionedCall$^conv2d_1200/StatefulPartitionedCall$^conv2d_1201/StatefulPartitionedCall$^conv2d_1202/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall$^dropout_201/StatefulPartitionedCall$^dropout_202/StatefulPartitionedCall$^dropout_203/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1248/StatefulPartitionedCall0batch_normalization_1248/StatefulPartitionedCall2d
0batch_normalization_1249/StatefulPartitionedCall0batch_normalization_1249/StatefulPartitionedCall2d
0batch_normalization_1250/StatefulPartitionedCall0batch_normalization_1250/StatefulPartitionedCall2d
0batch_normalization_1251/StatefulPartitionedCall0batch_normalization_1251/StatefulPartitionedCall2d
0batch_normalization_1252/StatefulPartitionedCall0batch_normalization_1252/StatefulPartitionedCall2J
#conv2d_1199/StatefulPartitionedCall#conv2d_1199/StatefulPartitionedCall2J
#conv2d_1200/StatefulPartitionedCall#conv2d_1200/StatefulPartitionedCall2J
#conv2d_1201/StatefulPartitionedCall#conv2d_1201/StatefulPartitionedCall2J
#conv2d_1202/StatefulPartitionedCall#conv2d_1202/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2J
#dropout_201/StatefulPartitionedCall#dropout_201/StatefulPartitionedCall2J
#dropout_202/StatefulPartitionedCall#dropout_202/StatefulPartitionedCall2J
#dropout_203/StatefulPartitionedCall#dropout_203/StatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
П
†
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4225796

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4225966

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
÷	
ш
F__inference_dense_151_layer_call_and_return_conditional_losses_4228975

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Х
f
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228463

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д
h
L__inference_activation_1346_layer_call_and_return_conditional_losses_4228662

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4226561

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
щ
f
H__inference_dropout_203_layer_call_and_return_conditional_losses_4226732

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
і
Є
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4226326

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
batchnorm/add_1№
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Д
h
L__inference_activation_1345_layer_call_and_return_conditional_losses_4226600

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ђ
’
:__inference_batch_normalization_1249_layer_call_fn_4228445

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_42265612
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
„
H
,__inference_flatten_97_layer_call_fn_4228829

inputs
identity…
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_97_layer_call_and_return_conditional_losses_42266932
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
пу
–9
#__inference__traced_restore_4229537
file_prefix=
#assignvariableop_conv2d_1199_kernel: 1
#assignvariableop_1_conv2d_1199_bias: ?
1assignvariableop_2_batch_normalization_1248_gamma: >
0assignvariableop_3_batch_normalization_1248_beta: E
7assignvariableop_4_batch_normalization_1248_moving_mean: I
;assignvariableop_5_batch_normalization_1248_moving_variance: ?
%assignvariableop_6_conv2d_1200_kernel:  1
#assignvariableop_7_conv2d_1200_bias: ?
1assignvariableop_8_batch_normalization_1249_gamma: >
0assignvariableop_9_batch_normalization_1249_beta: F
8assignvariableop_10_batch_normalization_1249_moving_mean: J
<assignvariableop_11_batch_normalization_1249_moving_variance: @
&assignvariableop_12_conv2d_1201_kernel: @2
$assignvariableop_13_conv2d_1201_bias:@@
2assignvariableop_14_batch_normalization_1250_gamma:@?
1assignvariableop_15_batch_normalization_1250_beta:@F
8assignvariableop_16_batch_normalization_1250_moving_mean:@J
<assignvariableop_17_batch_normalization_1250_moving_variance:@@
&assignvariableop_18_conv2d_1202_kernel:@@2
$assignvariableop_19_conv2d_1202_bias:@@
2assignvariableop_20_batch_normalization_1251_gamma:@?
1assignvariableop_21_batch_normalization_1251_beta:@F
8assignvariableop_22_batch_normalization_1251_moving_mean:@J
<assignvariableop_23_batch_normalization_1251_moving_variance:@8
$assignvariableop_24_dense_150_kernel:
А А1
"assignvariableop_25_dense_150_bias:	АA
2assignvariableop_26_batch_normalization_1252_gamma:	А@
1assignvariableop_27_batch_normalization_1252_beta:	АG
8assignvariableop_28_batch_normalization_1252_moving_mean:	АK
<assignvariableop_29_batch_normalization_1252_moving_variance:	А7
$assignvariableop_30_dense_151_kernel:	А
0
"assignvariableop_31_dense_151_bias:
'
assignvariableop_32_adam_iter:	 )
assignvariableop_33_adam_beta_1: )
assignvariableop_34_adam_beta_2: (
assignvariableop_35_adam_decay: 0
&assignvariableop_36_adam_learning_rate: #
assignvariableop_37_total: #
assignvariableop_38_count: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: G
-assignvariableop_41_adam_conv2d_1199_kernel_m: 9
+assignvariableop_42_adam_conv2d_1199_bias_m: G
9assignvariableop_43_adam_batch_normalization_1248_gamma_m: F
8assignvariableop_44_adam_batch_normalization_1248_beta_m: G
-assignvariableop_45_adam_conv2d_1200_kernel_m:  9
+assignvariableop_46_adam_conv2d_1200_bias_m: G
9assignvariableop_47_adam_batch_normalization_1249_gamma_m: F
8assignvariableop_48_adam_batch_normalization_1249_beta_m: G
-assignvariableop_49_adam_conv2d_1201_kernel_m: @9
+assignvariableop_50_adam_conv2d_1201_bias_m:@G
9assignvariableop_51_adam_batch_normalization_1250_gamma_m:@F
8assignvariableop_52_adam_batch_normalization_1250_beta_m:@G
-assignvariableop_53_adam_conv2d_1202_kernel_m:@@9
+assignvariableop_54_adam_conv2d_1202_bias_m:@G
9assignvariableop_55_adam_batch_normalization_1251_gamma_m:@F
8assignvariableop_56_adam_batch_normalization_1251_beta_m:@?
+assignvariableop_57_adam_dense_150_kernel_m:
А А8
)assignvariableop_58_adam_dense_150_bias_m:	АH
9assignvariableop_59_adam_batch_normalization_1252_gamma_m:	АG
8assignvariableop_60_adam_batch_normalization_1252_beta_m:	А>
+assignvariableop_61_adam_dense_151_kernel_m:	А
7
)assignvariableop_62_adam_dense_151_bias_m:
G
-assignvariableop_63_adam_conv2d_1199_kernel_v: 9
+assignvariableop_64_adam_conv2d_1199_bias_v: G
9assignvariableop_65_adam_batch_normalization_1248_gamma_v: F
8assignvariableop_66_adam_batch_normalization_1248_beta_v: G
-assignvariableop_67_adam_conv2d_1200_kernel_v:  9
+assignvariableop_68_adam_conv2d_1200_bias_v: G
9assignvariableop_69_adam_batch_normalization_1249_gamma_v: F
8assignvariableop_70_adam_batch_normalization_1249_beta_v: G
-assignvariableop_71_adam_conv2d_1201_kernel_v: @9
+assignvariableop_72_adam_conv2d_1201_bias_v:@G
9assignvariableop_73_adam_batch_normalization_1250_gamma_v:@F
8assignvariableop_74_adam_batch_normalization_1250_beta_v:@G
-assignvariableop_75_adam_conv2d_1202_kernel_v:@@9
+assignvariableop_76_adam_conv2d_1202_bias_v:@G
9assignvariableop_77_adam_batch_normalization_1251_gamma_v:@F
8assignvariableop_78_adam_batch_normalization_1251_beta_v:@?
+assignvariableop_79_adam_dense_150_kernel_v:
А А8
)assignvariableop_80_adam_dense_150_bias_v:	АH
9assignvariableop_81_adam_batch_normalization_1252_gamma_v:	АG
8assignvariableop_82_adam_batch_normalization_1252_beta_v:	А>
+assignvariableop_83_adam_dense_151_kernel_v:	А
7
)assignvariableop_84_adam_dense_151_bias_v:

identity_86ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_84ҐAssignVariableOp_9ѕ/
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*џ.
value—.Bќ.VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesљ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*Ѕ
valueЈBіVB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices№
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapesџ
Ў::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityҐ
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_1199_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1®
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_1199_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2ґ
AssignVariableOp_2AssignVariableOp1assignvariableop_2_batch_normalization_1248_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3µ
AssignVariableOp_3AssignVariableOp0assignvariableop_3_batch_normalization_1248_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp7assignvariableop_4_batch_normalization_1248_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ј
AssignVariableOp_5AssignVariableOp;assignvariableop_5_batch_normalization_1248_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6™
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv2d_1200_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7®
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_1200_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ґ
AssignVariableOp_8AssignVariableOp1assignvariableop_8_batch_normalization_1249_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9µ
AssignVariableOp_9AssignVariableOp0assignvariableop_9_batch_normalization_1249_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ј
AssignVariableOp_10AssignVariableOp8assignvariableop_10_batch_normalization_1249_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ƒ
AssignVariableOp_11AssignVariableOp<assignvariableop_11_batch_normalization_1249_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ѓ
AssignVariableOp_12AssignVariableOp&assignvariableop_12_conv2d_1201_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ђ
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_1201_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ї
AssignVariableOp_14AssignVariableOp2assignvariableop_14_batch_normalization_1250_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15є
AssignVariableOp_15AssignVariableOp1assignvariableop_15_batch_normalization_1250_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ј
AssignVariableOp_16AssignVariableOp8assignvariableop_16_batch_normalization_1250_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ƒ
AssignVariableOp_17AssignVariableOp<assignvariableop_17_batch_normalization_1250_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_conv2d_1202_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ђ
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_1202_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ї
AssignVariableOp_20AssignVariableOp2assignvariableop_20_batch_normalization_1251_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21є
AssignVariableOp_21AssignVariableOp1assignvariableop_21_batch_normalization_1251_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ј
AssignVariableOp_22AssignVariableOp8assignvariableop_22_batch_normalization_1251_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ƒ
AssignVariableOp_23AssignVariableOp<assignvariableop_23_batch_normalization_1251_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24ђ
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_150_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25™
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_150_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ї
AssignVariableOp_26AssignVariableOp2assignvariableop_26_batch_normalization_1252_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27є
AssignVariableOp_27AssignVariableOp1assignvariableop_27_batch_normalization_1252_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ј
AssignVariableOp_28AssignVariableOp8assignvariableop_28_batch_normalization_1252_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29ƒ
AssignVariableOp_29AssignVariableOp<assignvariableop_29_batch_normalization_1252_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ђ
AssignVariableOp_30AssignVariableOp$assignvariableop_30_dense_151_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31™
AssignVariableOp_31AssignVariableOp"assignvariableop_31_dense_151_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32•
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33І
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34І
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¶
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ѓ
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37°
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39£
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40£
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41µ
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_conv2d_1199_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42≥
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_1199_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Ѕ
AssignVariableOp_43AssignVariableOp9assignvariableop_43_adam_batch_normalization_1248_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44ј
AssignVariableOp_44AssignVariableOp8assignvariableop_44_adam_batch_normalization_1248_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45µ
AssignVariableOp_45AssignVariableOp-assignvariableop_45_adam_conv2d_1200_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46≥
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_1200_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ѕ
AssignVariableOp_47AssignVariableOp9assignvariableop_47_adam_batch_normalization_1249_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ј
AssignVariableOp_48AssignVariableOp8assignvariableop_48_adam_batch_normalization_1249_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49µ
AssignVariableOp_49AssignVariableOp-assignvariableop_49_adam_conv2d_1201_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50≥
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_1201_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Ѕ
AssignVariableOp_51AssignVariableOp9assignvariableop_51_adam_batch_normalization_1250_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52ј
AssignVariableOp_52AssignVariableOp8assignvariableop_52_adam_batch_normalization_1250_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53µ
AssignVariableOp_53AssignVariableOp-assignvariableop_53_adam_conv2d_1202_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54≥
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_1202_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55Ѕ
AssignVariableOp_55AssignVariableOp9assignvariableop_55_adam_batch_normalization_1251_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56ј
AssignVariableOp_56AssignVariableOp8assignvariableop_56_adam_batch_normalization_1251_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57≥
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_dense_150_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58±
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_150_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59Ѕ
AssignVariableOp_59AssignVariableOp9assignvariableop_59_adam_batch_normalization_1252_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60ј
AssignVariableOp_60AssignVariableOp8assignvariableop_60_adam_batch_normalization_1252_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61≥
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_dense_151_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62±
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_dense_151_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63µ
AssignVariableOp_63AssignVariableOp-assignvariableop_63_adam_conv2d_1199_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64≥
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv2d_1199_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65Ѕ
AssignVariableOp_65AssignVariableOp9assignvariableop_65_adam_batch_normalization_1248_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66ј
AssignVariableOp_66AssignVariableOp8assignvariableop_66_adam_batch_normalization_1248_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67µ
AssignVariableOp_67AssignVariableOp-assignvariableop_67_adam_conv2d_1200_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68≥
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv2d_1200_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Ѕ
AssignVariableOp_69AssignVariableOp9assignvariableop_69_adam_batch_normalization_1249_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70ј
AssignVariableOp_70AssignVariableOp8assignvariableop_70_adam_batch_normalization_1249_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71µ
AssignVariableOp_71AssignVariableOp-assignvariableop_71_adam_conv2d_1201_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72≥
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_conv2d_1201_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73Ѕ
AssignVariableOp_73AssignVariableOp9assignvariableop_73_adam_batch_normalization_1250_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74ј
AssignVariableOp_74AssignVariableOp8assignvariableop_74_adam_batch_normalization_1250_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75µ
AssignVariableOp_75AssignVariableOp-assignvariableop_75_adam_conv2d_1202_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76≥
AssignVariableOp_76AssignVariableOp+assignvariableop_76_adam_conv2d_1202_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77Ѕ
AssignVariableOp_77AssignVariableOp9assignvariableop_77_adam_batch_normalization_1251_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78ј
AssignVariableOp_78AssignVariableOp8assignvariableop_78_adam_batch_normalization_1251_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79≥
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_dense_150_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80±
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_dense_150_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81Ѕ
AssignVariableOp_81AssignVariableOp9assignvariableop_81_adam_batch_normalization_1252_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82ј
AssignVariableOp_82AssignVariableOp8assignvariableop_82_adam_batch_normalization_1252_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83≥
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_dense_151_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84±
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_dense_151_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_849
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpђ
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_85Я
Identity_86IdentityIdentity_85:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_86"#
identity_86Identity_86:output:0*Ѕ
_input_shapesѓ
ђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
•
Щ
+__inference_dense_151_layer_call_fn_4228984

inputs
unknown:	А

	unknown_0:

identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_42267442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
п
M
1__inference_activation_1344_layer_call_fn_4228334

inputs
identity’
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1344_layer_call_and_return_conditional_losses_42265422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Т
ў
:__inference_batch_normalization_1252_layer_call_fn_4228938

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_42263862
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ
Ґ
-__inference_conv2d_1200_layer_call_fn_4228324

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_42265312
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
ќ
Ґ
-__inference_conv2d_1202_layer_call_fn_4228657

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_42266392
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
п
M
1__inference_activation_1343_layer_call_fn_4228181

inputs
identity’
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_activation_1343_layer_call_and_return_conditional_losses_42264922
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Ф
ў
:__inference_batch_normalization_1252_layer_call_fn_4228925

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_42263262
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Д
h
L__inference_activation_1344_layer_call_and_return_conditional_losses_4228329

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
а
O
3__inference_max_pooling2d_192_layer_call_fn_4226038

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_42260322
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
б
г
,__inference_MiniVGGNet_layer_call_fn_4227470
conv2d_1199_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
А А

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:	А


unknown_30:

identityИҐStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallconv2d_1199_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_42273342
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
м
h
L__inference_activation_1348_layer_call_and_return_conditional_losses_4228989

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:€€€€€€€€€
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4225840

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
П
†
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228532

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ђ
’
:__inference_batch_normalization_1250_layer_call_fn_4228625

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_42266192
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228370

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
њ
№
%__inference_signature_wrapper_4227729
conv2d_1199_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
А А

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:	А


unknown_30:

identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallconv2d_1199_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_42257742
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€  
+
_user_specified_nameconv2d_1199_input
а
O
3__inference_max_pooling2d_193_layer_call_fn_4226302

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_42262962
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
«
†
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228388

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€   : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
й
c
G__inference_flatten_97_layer_call_and_return_conditional_losses_4226693

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
у
f
-__inference_dropout_201_layer_call_fn_4228485

inputs
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_201_layer_call_and_return_conditional_losses_42270492
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д
h
L__inference_activation_1343_layer_call_and_return_conditional_losses_4228176

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
т
’
:__inference_batch_normalization_1251_layer_call_fn_4228765

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_42262302
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
√
ƒ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228217

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3¬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueќ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ј
Ў
,__inference_MiniVGGNet_layer_call_fn_4228152

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
А А

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:	А


unknown_30:

identityИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_42273342
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ѓ
j
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_4226032

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ќ
serving_defaultЇ
W
conv2d_1199_inputB
#serving_default_conv2d_1199_input:0€€€€€€€€€  C
activation_13480
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:Зя
∆°
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+”&call_and_return_all_conditional_losses
‘_default_save_signature
’__call__"†Ы
_tf_keras_sequentialАЫ{"name": "MiniVGGNet", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "MiniVGGNet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1199_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1199", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1343", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1248", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1200", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1344", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1249", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_192", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_201", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1201", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1345", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1250", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1202", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1346", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1251", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_193", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_202", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_97", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_150", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1347", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1252", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_203", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_151", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1348", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "conv2d_1199_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "MiniVGGNet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1199_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_1199", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_1343", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1248", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_1200", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Activation", "config": {"name": "activation_1344", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1249", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_192", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 19}, {"class_name": "Dropout", "config": {"name": "dropout_201", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_1201", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "Activation", "config": {"name": "activation_1345", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1250", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 29}, {"class_name": "Conv2D", "config": {"name": "conv2d_1202", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 32}, {"class_name": "Activation", "config": {"name": "activation_1346", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 33}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1251", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 38}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_193", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 39}, {"class_name": "Dropout", "config": {"name": "dropout_202", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 40}, {"class_name": "Flatten", "config": {"name": "flatten_97", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 41}, {"class_name": "Dense", "config": {"name": "dense_150", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44}, {"class_name": "Activation", "config": {"name": "activation_1347", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 45}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1252", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 50}, {"class_name": "Dropout", "config": {"name": "dropout_203", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 51}, {"class_name": "Dense", "config": {"name": "dense_151", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 54}, {"class_name": "Activation", "config": {"name": "activation_1348", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 55}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 58}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ў

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
+÷&call_and_return_all_conditional_losses
„__call__"±

_tf_keras_layerЧ
{"name": "conv2d_1199", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1199", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
ф
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+Ў&call_and_return_all_conditional_losses
ў__call__"г
_tf_keras_layer…{"name": "activation_1343", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1343", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
Ќ

(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+Џ&call_and_return_all_conditional_losses
џ__call__"ч
_tf_keras_layerЁ{"name": "batch_normalization_1248", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1248", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
№


1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
+№&call_and_return_all_conditional_losses
Ё__call__"µ	
_tf_keras_layerЫ	{"name": "conv2d_1200", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1200", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
х
7	variables
8regularization_losses
9trainable_variables
:	keras_api
+ё&call_and_return_all_conditional_losses
я__call__"д
_tf_keras_layer {"name": "activation_1344", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1344", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}
“

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
+а&call_and_return_all_conditional_losses
б__call__"ь
_tf_keras_layerв{"name": "batch_normalization_1249", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1249", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
µ
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+в&call_and_return_all_conditional_losses
г__call__"§
_tf_keras_layerК{"name": "max_pooling2d_192", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_192", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 62}}
Д
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
+д&call_and_return_all_conditional_losses
е__call__"у
_tf_keras_layerў{"name": "dropout_201", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_201", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 20}
№


Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+ж&call_and_return_all_conditional_losses
з__call__"µ	
_tf_keras_layerЫ	{"name": "conv2d_1201", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1201", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
х
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
+и&call_and_return_all_conditional_losses
й__call__"д
_tf_keras_layer {"name": "activation_1345", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1345", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}
“

Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+к&call_and_return_all_conditional_losses
л__call__"ь
_tf_keras_layerв{"name": "batch_normalization_1250", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1250", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
№


_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
+м&call_and_return_all_conditional_losses
н__call__"µ	
_tf_keras_layerЫ	{"name": "conv2d_1202", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1202", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 65}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
х
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
+о&call_and_return_all_conditional_losses
п__call__"д
_tf_keras_layer {"name": "activation_1346", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1346", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 33}
“

iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
+р&call_and_return_all_conditional_losses
с__call__"ь
_tf_keras_layerв{"name": "batch_normalization_1251", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1251", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 38, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
µ
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
+т&call_and_return_all_conditional_losses
у__call__"§
_tf_keras_layerК{"name": "max_pooling2d_193", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_193", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 67}}
Д
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"у
_tf_keras_layerў{"name": "dropout_202", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_202", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 40}
Ъ
z	variables
{regularization_losses
|trainable_variables
}	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"Й
_tf_keras_layerп{"name": "flatten_97", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_97", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 68}}
б

~kernel
bias
А	variables
Бregularization_losses
Вtrainable_variables
Г	keras_api
+ш&call_and_return_all_conditional_losses
щ__call__"ґ
_tf_keras_layerЬ{"name": "dense_150", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_150", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4096}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4096]}}
щ
Д	variables
Еregularization_losses
Жtrainable_variables
З	keras_api
+ъ&call_and_return_all_conditional_losses
ы__call__"д
_tf_keras_layer {"name": "activation_1347", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1347", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 45}
’

	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Н	variables
Оregularization_losses
Пtrainable_variables
Р	keras_api
+ь&call_and_return_all_conditional_losses
э__call__"ц
_tf_keras_layer№{"name": "batch_normalization_1252", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1252", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 50, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
З
С	variables
Тregularization_losses
Уtrainable_variables
Ф	keras_api
+ю&call_and_return_all_conditional_losses
€__call__"т
_tf_keras_layerЎ{"name": "dropout_203", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_203", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 51}
а
Хkernel
	Цbias
Ч	variables
Шregularization_losses
Щtrainable_variables
Ъ	keras_api
+А&call_and_return_all_conditional_losses
Б__call__"≥
_tf_keras_layerЩ{"name": "dense_151", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_151", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ь
Ы	variables
Ьregularization_losses
Эtrainable_variables
Ю	keras_api
+В&call_and_return_all_conditional_losses
Г__call__"з
_tf_keras_layerЌ{"name": "activation_1348", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1348", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 55}
Ш
	Яiter
†beta_1
°beta_2

Ґdecay
£learning_ratemІm®)m©*m™1mЂ2mђ<m≠=mЃLmѓMm∞Wm±Xm≤_m≥`mіjmµkmґ~mЈmЄ	Йmє	КmЇ	Хmї	ЦmЉvљvЊ)vњ*vј1vЅ2v¬<v√=vƒLv≈Mv∆Wv«Xv»_v…`v jvЋkvћ~vЌvќ	Йvѕ	Кv–	Хv—	Цv“"
	optimizer
Ь
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
Й26
К27
Л28
М29
Х30
Ц31"
trackable_list_wrapper
 "
trackable_list_wrapper
 
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
Й18
К19
Х20
Ц21"
trackable_list_wrapper
”
§non_trainable_variables
•metrics
¶layer_metrics
 Іlayer_regularization_losses
	variables
regularization_losses
®layers
trainable_variables
’__call__
‘_default_save_signature
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
-
Дserving_default"
signature_map
,:* 2conv2d_1199/kernel
: 2conv2d_1199/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
µ
©non_trainable_variables
™layer_metrics
Ђmetrics
 ђlayer_regularization_losses
 	variables
!regularization_losses
≠layers
"trainable_variables
„__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ѓnon_trainable_variables
ѓlayer_metrics
∞metrics
 ±layer_regularization_losses
$	variables
%regularization_losses
≤layers
&trainable_variables
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:* 2batch_normalization_1248/gamma
+:) 2batch_normalization_1248/beta
4:2  (2$batch_normalization_1248/moving_mean
8:6  (2(batch_normalization_1248/moving_variance
<
)0
*1
+2
,3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
µ
≥non_trainable_variables
іlayer_metrics
µmetrics
 ґlayer_regularization_losses
-	variables
.regularization_losses
Јlayers
/trainable_variables
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
,:*  2conv2d_1200/kernel
: 2conv2d_1200/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
µ
Єnon_trainable_variables
єlayer_metrics
Їmetrics
 їlayer_regularization_losses
3	variables
4regularization_losses
Љlayers
5trainable_variables
Ё__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
љnon_trainable_variables
Њlayer_metrics
њmetrics
 јlayer_regularization_losses
7	variables
8regularization_losses
Ѕlayers
9trainable_variables
я__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:* 2batch_normalization_1249/gamma
+:) 2batch_normalization_1249/beta
4:2  (2$batch_normalization_1249/moving_mean
8:6  (2(batch_normalization_1249/moving_variance
<
<0
=1
>2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
µ
¬non_trainable_variables
√layer_metrics
ƒmetrics
 ≈layer_regularization_losses
@	variables
Aregularization_losses
∆layers
Btrainable_variables
б__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
«non_trainable_variables
»layer_metrics
…metrics
  layer_regularization_losses
D	variables
Eregularization_losses
Ћlayers
Ftrainable_variables
г__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ћnon_trainable_variables
Ќlayer_metrics
ќmetrics
 ѕlayer_regularization_losses
H	variables
Iregularization_losses
–layers
Jtrainable_variables
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
,:* @2conv2d_1201/kernel
:@2conv2d_1201/bias
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
µ
—non_trainable_variables
“layer_metrics
”metrics
 ‘layer_regularization_losses
N	variables
Oregularization_losses
’layers
Ptrainable_variables
з__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
÷non_trainable_variables
„layer_metrics
Ўmetrics
 ўlayer_regularization_losses
R	variables
Sregularization_losses
Џlayers
Ttrainable_variables
й__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*@2batch_normalization_1250/gamma
+:)@2batch_normalization_1250/beta
4:2@ (2$batch_normalization_1250/moving_mean
8:6@ (2(batch_normalization_1250/moving_variance
<
W0
X1
Y2
Z3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
µ
џnon_trainable_variables
№layer_metrics
Ёmetrics
 ёlayer_regularization_losses
[	variables
\regularization_losses
яlayers
]trainable_variables
л__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
,:*@@2conv2d_1202/kernel
:@2conv2d_1202/bias
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
µ
аnon_trainable_variables
бlayer_metrics
вmetrics
 гlayer_regularization_losses
a	variables
bregularization_losses
дlayers
ctrainable_variables
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
еnon_trainable_variables
жlayer_metrics
зmetrics
 иlayer_regularization_losses
e	variables
fregularization_losses
йlayers
gtrainable_variables
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*@2batch_normalization_1251/gamma
+:)@2batch_normalization_1251/beta
4:2@ (2$batch_normalization_1251/moving_mean
8:6@ (2(batch_normalization_1251/moving_variance
<
j0
k1
l2
m3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
µ
кnon_trainable_variables
лlayer_metrics
мmetrics
 нlayer_regularization_losses
n	variables
oregularization_losses
оlayers
ptrainable_variables
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
пnon_trainable_variables
рlayer_metrics
сmetrics
 тlayer_regularization_losses
r	variables
sregularization_losses
уlayers
ttrainable_variables
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
фnon_trainable_variables
хlayer_metrics
цmetrics
 чlayer_regularization_losses
v	variables
wregularization_losses
шlayers
xtrainable_variables
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
щnon_trainable_variables
ъlayer_metrics
ыmetrics
 ьlayer_regularization_losses
z	variables
{regularization_losses
эlayers
|trainable_variables
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
$:"
А А2dense_150/kernel
:А2dense_150/bias
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
Є
юnon_trainable_variables
€layer_metrics
Аmetrics
 Бlayer_regularization_losses
А	variables
Бregularization_losses
Вlayers
Вtrainable_variables
щ__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Гnon_trainable_variables
Дlayer_metrics
Еmetrics
 Жlayer_regularization_losses
Д	variables
Еregularization_losses
Зlayers
Жtrainable_variables
ы__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+А2batch_normalization_1252/gamma
,:*А2batch_normalization_1252/beta
5:3А (2$batch_normalization_1252/moving_mean
9:7А (2(batch_normalization_1252/moving_variance
@
Й0
К1
Л2
М3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
Є
Иnon_trainable_variables
Йlayer_metrics
Кmetrics
 Лlayer_regularization_losses
Н	variables
Оregularization_losses
Мlayers
Пtrainable_variables
э__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Нnon_trainable_variables
Оlayer_metrics
Пmetrics
 Рlayer_regularization_losses
С	variables
Тregularization_losses
Сlayers
Уtrainable_variables
€__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
#:!	А
2dense_151/kernel
:
2dense_151/bias
0
Х0
Ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
Є
Тnon_trainable_variables
Уlayer_metrics
Фmetrics
 Хlayer_regularization_losses
Ч	variables
Шregularization_losses
Цlayers
Щtrainable_variables
Б__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Чnon_trainable_variables
Шlayer_metrics
Щmetrics
 Ъlayer_regularization_losses
Ы	variables
Ьregularization_losses
Ыlayers
Эtrainable_variables
Г__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
h
+0
,1
>2
?3
Y4
Z5
l6
m7
Л8
М9"
trackable_list_wrapper
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
ќ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Л0
М1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ў

Юtotal

Яcount
†	variables
°	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 72}
Ь

Ґtotal

£count
§
_fn_kwargs
•	variables
¶	keras_api"–
_tf_keras_metricµ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 58}
:  (2total
:  (2count
0
Ю0
Я1"
trackable_list_wrapper
.
†	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ґ0
£1"
trackable_list_wrapper
.
•	variables"
_generic_user_object
1:/ 2Adam/conv2d_1199/kernel/m
#:! 2Adam/conv2d_1199/bias/m
1:/ 2%Adam/batch_normalization_1248/gamma/m
0:. 2$Adam/batch_normalization_1248/beta/m
1:/  2Adam/conv2d_1200/kernel/m
#:! 2Adam/conv2d_1200/bias/m
1:/ 2%Adam/batch_normalization_1249/gamma/m
0:. 2$Adam/batch_normalization_1249/beta/m
1:/ @2Adam/conv2d_1201/kernel/m
#:!@2Adam/conv2d_1201/bias/m
1:/@2%Adam/batch_normalization_1250/gamma/m
0:.@2$Adam/batch_normalization_1250/beta/m
1:/@@2Adam/conv2d_1202/kernel/m
#:!@2Adam/conv2d_1202/bias/m
1:/@2%Adam/batch_normalization_1251/gamma/m
0:.@2$Adam/batch_normalization_1251/beta/m
):'
А А2Adam/dense_150/kernel/m
": А2Adam/dense_150/bias/m
2:0А2%Adam/batch_normalization_1252/gamma/m
1:/А2$Adam/batch_normalization_1252/beta/m
(:&	А
2Adam/dense_151/kernel/m
!:
2Adam/dense_151/bias/m
1:/ 2Adam/conv2d_1199/kernel/v
#:! 2Adam/conv2d_1199/bias/v
1:/ 2%Adam/batch_normalization_1248/gamma/v
0:. 2$Adam/batch_normalization_1248/beta/v
1:/  2Adam/conv2d_1200/kernel/v
#:! 2Adam/conv2d_1200/bias/v
1:/ 2%Adam/batch_normalization_1249/gamma/v
0:. 2$Adam/batch_normalization_1249/beta/v
1:/ @2Adam/conv2d_1201/kernel/v
#:!@2Adam/conv2d_1201/bias/v
1:/@2%Adam/batch_normalization_1250/gamma/v
0:.@2$Adam/batch_normalization_1250/beta/v
1:/@@2Adam/conv2d_1202/kernel/v
#:!@2Adam/conv2d_1202/bias/v
1:/@2%Adam/batch_normalization_1251/gamma/v
0:.@2$Adam/batch_normalization_1251/beta/v
):'
А А2Adam/dense_150/kernel/v
": А2Adam/dense_150/bias/v
2:0А2%Adam/batch_normalization_1252/gamma/v
1:/А2$Adam/batch_normalization_1252/beta/v
(:&	А
2Adam/dense_151/kernel/v
!:
2Adam/dense_151/bias/v
к2з
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227854
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4228014
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227561
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227652ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
"__inference__wrapped_model_4225774»
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *8Ґ5
3К0
conv2d_1199_input€€€€€€€€€  
ю2ы
,__inference_MiniVGGNet_layer_call_fn_4226825
,__inference_MiniVGGNet_layer_call_fn_4228083
,__inference_MiniVGGNet_layer_call_fn_4228152
,__inference_MiniVGGNet_layer_call_fn_4227470ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_4228162Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv2d_1199_layer_call_fn_4228171Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1343_layer_call_and_return_conditional_losses_4228176Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1343_layer_call_fn_4228181Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ц2У
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228199
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228217
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228235
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228253і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
:__inference_batch_normalization_1248_layer_call_fn_4228266
:__inference_batch_normalization_1248_layer_call_fn_4228279
:__inference_batch_normalization_1248_layer_call_fn_4228292
:__inference_batch_normalization_1248_layer_call_fn_4228305і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_4228315Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv2d_1200_layer_call_fn_4228324Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1344_layer_call_and_return_conditional_losses_4228329Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1344_layer_call_fn_4228334Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ц2У
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228352
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228370
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228388
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228406і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
:__inference_batch_normalization_1249_layer_call_fn_4228419
:__inference_batch_normalization_1249_layer_call_fn_4228432
:__inference_batch_normalization_1249_layer_call_fn_4228445
:__inference_batch_normalization_1249_layer_call_fn_4228458і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ґ2≥
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_4226032а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ы2Ш
3__inference_max_pooling2d_192_layer_call_fn_4226038а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
ќ2Ћ
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228463
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228475і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_201_layer_call_fn_4228480
-__inference_dropout_201_layer_call_fn_4228485і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_4228495Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv2d_1201_layer_call_fn_4228504Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1345_layer_call_and_return_conditional_losses_4228509Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1345_layer_call_fn_4228514Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ц2У
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228532
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228550
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228568
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228586і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
:__inference_batch_normalization_1250_layer_call_fn_4228599
:__inference_batch_normalization_1250_layer_call_fn_4228612
:__inference_batch_normalization_1250_layer_call_fn_4228625
:__inference_batch_normalization_1250_layer_call_fn_4228638і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_4228648Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv2d_1202_layer_call_fn_4228657Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1346_layer_call_and_return_conditional_losses_4228662Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1346_layer_call_fn_4228667Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ц2У
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228685
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228703
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228721
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228739і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
:__inference_batch_normalization_1251_layer_call_fn_4228752
:__inference_batch_normalization_1251_layer_call_fn_4228765
:__inference_batch_normalization_1251_layer_call_fn_4228778
:__inference_batch_normalization_1251_layer_call_fn_4228791і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ґ2≥
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_4226296а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ы2Ш
3__inference_max_pooling2d_193_layer_call_fn_4226302а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
ќ2Ћ
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228796
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228808і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_202_layer_call_fn_4228813
-__inference_dropout_202_layer_call_fn_4228818і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_flatten_97_layer_call_and_return_conditional_losses_4228824Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_flatten_97_layer_call_fn_4228829Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_150_layer_call_and_return_conditional_losses_4228839Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_dense_150_layer_call_fn_4228848Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1347_layer_call_and_return_conditional_losses_4228853Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1347_layer_call_fn_4228858Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
и2е
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228878
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228912і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
≤2ѓ
:__inference_batch_normalization_1252_layer_call_fn_4228925
:__inference_batch_normalization_1252_layer_call_fn_4228938і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228943
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228955і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ш2Х
-__inference_dropout_203_layer_call_fn_4228960
-__inference_dropout_203_layer_call_fn_4228965і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
р2н
F__inference_dense_151_layer_call_and_return_conditional_losses_4228975Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_dense_151_layer_call_fn_4228984Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_activation_1348_layer_call_and_return_conditional_losses_4228989Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_activation_1348_layer_call_fn_4228994Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷B”
%__inference_signature_wrapper_4227729conv2d_1199_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 з
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227561Ы&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦJҐG
@Ґ=
3К0
conv2d_1199_input€€€€€€€€€  
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ з
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227652Ы&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦJҐG
@Ґ=
3К0
conv2d_1199_input€€€€€€€€€  
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ №
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4227854Р&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ №
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4228014Р&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ њ
,__inference_MiniVGGNet_layer_call_fn_4226825О&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦJҐG
@Ґ=
3К0
conv2d_1199_input€€€€€€€€€  
p 

 
™ "К€€€€€€€€€
њ
,__inference_MiniVGGNet_layer_call_fn_4227470О&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦJҐG
@Ґ=
3К0
conv2d_1199_input€€€€€€€€€  
p

 
™ "К€€€€€€€€€
і
,__inference_MiniVGGNet_layer_call_fn_4228083Г&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "К€€€€€€€€€
і
,__inference_MiniVGGNet_layer_call_fn_4228152Г&)*+,12<=>?LMWXYZ_`jklm~ЛМЙКХЦ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "К€€€€€€€€€
÷
"__inference__wrapped_model_4225774ѓ&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦBҐ?
8Ґ5
3К0
conv2d_1199_input€€€€€€€€€  
™ "A™>
<
activation_1348)К&
activation_1348€€€€€€€€€
Є
L__inference_activation_1343_layer_call_and_return_conditional_losses_4228176h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Р
1__inference_activation_1343_layer_call_fn_4228181[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ " К€€€€€€€€€   Є
L__inference_activation_1344_layer_call_and_return_conditional_losses_4228329h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Р
1__inference_activation_1344_layer_call_fn_4228334[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ " К€€€€€€€€€   Є
L__inference_activation_1345_layer_call_and_return_conditional_losses_4228509h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Р
1__inference_activation_1345_layer_call_fn_4228514[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@Є
L__inference_activation_1346_layer_call_and_return_conditional_losses_4228662h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Р
1__inference_activation_1346_layer_call_fn_4228667[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@™
L__inference_activation_1347_layer_call_and_return_conditional_losses_4228853Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ В
1__inference_activation_1347_layer_call_fn_4228858M0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А®
L__inference_activation_1348_layer_call_and_return_conditional_losses_4228989X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ А
1__inference_activation_1348_layer_call_fn_4228994K/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
р
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228199Ц)*+,MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ р
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228217Ц)*+,MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ Ћ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228235r)*+,;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p 
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Ћ
U__inference_batch_normalization_1248_layer_call_and_return_conditional_losses_4228253r)*+,;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ »
:__inference_batch_normalization_1248_layer_call_fn_4228266Й)*+,MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ »
:__inference_batch_normalization_1248_layer_call_fn_4228279Й)*+,MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ £
:__inference_batch_normalization_1248_layer_call_fn_4228292e)*+,;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p 
™ " К€€€€€€€€€   £
:__inference_batch_normalization_1248_layer_call_fn_4228305e)*+,;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p
™ " К€€€€€€€€€   р
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228352Ц<=>?MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ р
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228370Ц<=>?MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ Ћ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228388r<=>?;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p 
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Ћ
U__inference_batch_normalization_1249_layer_call_and_return_conditional_losses_4228406r<=>?;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ »
:__inference_batch_normalization_1249_layer_call_fn_4228419Й<=>?MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ »
:__inference_batch_normalization_1249_layer_call_fn_4228432Й<=>?MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ £
:__inference_batch_normalization_1249_layer_call_fn_4228445e<=>?;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p 
™ " К€€€€€€€€€   £
:__inference_batch_normalization_1249_layer_call_fn_4228458e<=>?;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€   
p
™ " К€€€€€€€€€   р
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228532ЦWXYZMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ р
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228550ЦWXYZMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ Ћ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228568rWXYZ;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Ћ
U__inference_batch_normalization_1250_layer_call_and_return_conditional_losses_4228586rWXYZ;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ »
:__inference_batch_normalization_1250_layer_call_fn_4228599ЙWXYZMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@»
:__inference_batch_normalization_1250_layer_call_fn_4228612ЙWXYZMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@£
:__inference_batch_normalization_1250_layer_call_fn_4228625eWXYZ;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@£
:__inference_batch_normalization_1250_layer_call_fn_4228638eWXYZ;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@р
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228685ЦjklmMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ р
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228703ЦjklmMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ Ћ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228721rjklm;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Ћ
U__inference_batch_normalization_1251_layer_call_and_return_conditional_losses_4228739rjklm;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ »
:__inference_batch_normalization_1251_layer_call_fn_4228752ЙjklmMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@»
:__inference_batch_normalization_1251_layer_call_fn_4228765ЙjklmMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@£
:__inference_batch_normalization_1251_layer_call_fn_4228778ejklm;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@£
:__inference_batch_normalization_1251_layer_call_fn_4228791ejklm;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@Ѕ
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228878hМЙЛК4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Ѕ
U__inference_batch_normalization_1252_layer_call_and_return_conditional_losses_4228912hЛМЙК4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Щ
:__inference_batch_normalization_1252_layer_call_fn_4228925[МЙЛК4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€АЩ
:__inference_batch_normalization_1252_layer_call_fn_4228938[ЛМЙК4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€АЄ
H__inference_conv2d_1199_layer_call_and_return_conditional_losses_4228162l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Р
-__inference_conv2d_1199_layer_call_fn_4228171_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ " К€€€€€€€€€   Є
H__inference_conv2d_1200_layer_call_and_return_conditional_losses_4228315l127Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Р
-__inference_conv2d_1200_layer_call_fn_4228324_127Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ " К€€€€€€€€€   Є
H__inference_conv2d_1201_layer_call_and_return_conditional_losses_4228495lLM7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Р
-__inference_conv2d_1201_layer_call_fn_4228504_LM7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@Є
H__inference_conv2d_1202_layer_call_and_return_conditional_losses_4228648l_`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Р
-__inference_conv2d_1202_layer_call_fn_4228657__`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@®
F__inference_dense_150_layer_call_and_return_conditional_losses_4228839^~0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ А
+__inference_dense_150_layer_call_fn_4228848Q~0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А 
™ "К€€€€€€€€€А©
F__inference_dense_151_layer_call_and_return_conditional_losses_4228975_ХЦ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€

Ъ Б
+__inference_dense_151_layer_call_fn_4228984RХЦ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€
Є
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228463l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Є
H__inference_dropout_201_layer_call_and_return_conditional_losses_4228475l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Р
-__inference_dropout_201_layer_call_fn_4228480_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ " К€€€€€€€€€ Р
-__inference_dropout_201_layer_call_fn_4228485_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ " К€€€€€€€€€ Є
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228796l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Є
H__inference_dropout_202_layer_call_and_return_conditional_losses_4228808l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Р
-__inference_dropout_202_layer_call_fn_4228813_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@Р
-__inference_dropout_202_layer_call_fn_4228818_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@™
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228943^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ™
H__inference_dropout_203_layer_call_and_return_conditional_losses_4228955^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ В
-__inference_dropout_203_layer_call_fn_4228960Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€АВ
-__inference_dropout_203_layer_call_fn_4228965Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€Ађ
G__inference_flatten_97_layer_call_and_return_conditional_losses_4228824a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А 
Ъ Д
,__inference_flatten_97_layer_call_fn_4228829T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€А с
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_4226032ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ …
3__inference_max_pooling2d_192_layer_call_fn_4226038СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€с
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_4226296ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ …
3__inference_max_pooling2d_193_layer_call_fn_4226302СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
%__inference_signature_wrapper_4227729ƒ&)*+,12<=>?LMWXYZ_`jklm~МЙЛКХЦWҐT
Ґ 
M™J
H
conv2d_1199_input3К0
conv2d_1199_input€€€€€€€€€  "A™>
<
activation_1348)К&
activation_1348€€€€€€€€€
