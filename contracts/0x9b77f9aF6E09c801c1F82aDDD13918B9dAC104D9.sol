contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[71 len 4717]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_ab701207;
mapping of struct sub_13d68ed1;

function sub_13d68ed1(?) payable {
    return sub_13d68ed1[address(arg1)].field_512
}

function sub_2b7971b8(?) payable {
    return sub_13d68ed1[address(arg1)].field_768
}

function picture(address arg1) payable {
    return sub_13d68ed1[address(arg1)][4][0 len sub_13d68ed1[address(arg1)][4].length].field_0
}

function getUser(address arg1) payable {
    require bool(sub_13d68ed1[address(arg1)].field_0) == 1
    mem[160] = sub_13d68ed1[address(arg1)][4].field_0
    idx = 160
    s = 0
    while sub_13d68ed1[address(arg1)][4].length + 128 > idx:
        mem[idx + 32] = sub_13d68ed1[address(arg1)][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_13d68ed1[address(arg1)].field_512, 
           sub_13d68ed1[address(arg1)].field_768,
           Array(len=sub_13d68ed1[address(arg1)][4].length, data=mem[160 len sub_13d68ed1[address(arg1)][4].length]),
           sub_13d68ed1[address(arg1)].field_1280,
           sub_13d68ed1[address(arg1)].field_1536,
           sub_13d68ed1[address(arg1)].field_1792,
           sub_13d68ed1[address(arg1)].field_2048,
           sub_13d68ed1[address(arg1)].field_2304
}

function sub_8c4b4738(?) payable {
    return sub_13d68ed1[address(arg1)].field_1536
}

function sub_ab701207(?) payable {
    return sub_ab701207
}

function sub_cc2276f9(?) payable {
    return sub_13d68ed1[address(arg1)].field_2048
}

function sub_fd2a46a5(?) payable {
    return sub_13d68ed1[address(arg1)].field_1280
}

function sex(address arg1) payable {
    return sub_13d68ed1[address(arg1)].field_1792
}

function _fallback() payable {
  stop
}

function empty() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_832647b3(?) payable {
    sub_13d68ed1[address(msg.sender)].field_1792 = arg1
    emit Update(msg.sender, 'Sex');
}

function sub_7a636151(?) payable {
    sub_13d68ed1[address(msg.sender)].field_768 = arg1
    emit Update(msg.sender, 'LastName');
}

function sub_1868deec(?) payable {
    sub_13d68ed1[address(msg.sender)].field_512 = arg1
    emit Update(msg.sender, 'FirstName');
}

function sub_4445c35d(?) payable {
    sub_13d68ed1[address(msg.sender)].field_1280 = arg1
    emit Update(msg.sender, 'EyeColor');
}

function sub_5df31051(?) payable {
    sub_13d68ed1[address(msg.sender)].field_2048 = arg1
    emit Update(msg.sender, 'Birthday');
}

function setHeight(uint256 arg1) payable {
    sub_13d68ed1[address(msg.sender)].field_1536 = arg1
    emit Update(msg.sender, 'Height');
}

function setPicture(string arg1) payable {
    sub_13d68ed1[address(msg.sender)][4][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit Update(msg.sender, 'Picture');
}

function sub_72b1f192(?) payable {
    require not sub_13d68ed1[address(msg.sender)].field_0
    sub_ab701207++
    sub_13d68ed1[address(msg.sender)].field_256 = sub_ab701207
    sub_13d68ed1[address(msg.sender)].field_0 = 1
    sub_13d68ed1[address(msg.sender)].field_0 = 1
    sub_13d68ed1[address(msg.sender)].field_2304 = msg.sender or Mask(96, 160, sub_13d68ed1[address(msg.sender)].field_2304)
    sub_13d68ed1[address(msg.sender)].field_512 = arg1
    emit Update(msg.sender, 'FirstName');
    sub_13d68ed1[address(msg.sender)].field_768 = arg2
    emit Update(msg.sender, 'LastName');
    sub_13d68ed1[address(msg.sender)][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit Update(msg.sender, 'Picture');
    sub_13d68ed1[address(msg.sender)].field_1280 = arg4
    emit Update(msg.sender, 'EyeColor');
    sub_13d68ed1[address(msg.sender)].field_1536 = arg5
    emit Update(msg.sender, 'Height');
    sub_13d68ed1[address(msg.sender)].field_1792 = arg6
    emit Update(msg.sender, 'Sex');
    sub_13d68ed1[address(msg.sender)].field_2048 = arg7
    emit Update(msg.sender, 'Birthday');
    emit Register(msg.sender);
}



}
