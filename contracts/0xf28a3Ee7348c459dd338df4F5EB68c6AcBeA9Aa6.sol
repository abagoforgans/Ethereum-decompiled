contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = 0
    return code.data[41 len 5211]
}



// =====================  Runtime code  =====================


#
#  - sub_d321411c(?)
#
array of struct name;
mapping of address sub_effc99cd;
uint256 sub_5bfadae4;
address stor3;
uint256 stor3;

function name(uint256 arg1) payable {
    return name[address(stor1[arg1])][1][0 len name[address(stor1[arg1])][1].length].field_0
}

function sub_1d9821cd(?) payable {
    return name[address(stor1[arg1])][3][0 len name[address(stor1[arg1])][3].length].field_0
}

function sub_20822abc(?) payable {
    return name[address(stor1[arg1])][4][0 len name[address(stor1[arg1])][4].length].field_0
}

function isHidden(uint256 arg1) payable {
    return name[address(stor1[arg1])].field_1280
}

function sub_5bfadae4(?) payable {
    return sub_5bfadae4
}

function sub_85e1451f(?) payable {
    return name[address(stor1[arg1])][0 len name[address(stor1[arg1])].length].field_0
}

function desc(uint256 arg1) payable {
    return name[address(stor1[arg1])][2][0 len name[address(stor1[arg1])][2].length].field_0
}

function sub_effc99cd(?) payable {
    return address(sub_effc99cd[arg1])
}

function donation(uint256 arg1) payable {
    return name[address(stor1[arg1])].field_1536
}

function _fallback() payable {
  stop
}

function changeCreator(address arg1) payable {
    if msg.sender == address(stor3):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function empty() payable {
    if address(stor3) == msg.sender:
        call address(stor3) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function donate() payable {
    name[address(msg.sender)].field_1536 += msg.value
    if name[address(msg.sender)].field_1792:
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function sub_330a2c84(?) payable {
    if name[address(msg.sender)].field_1792:
        name[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function sub_19f112e2(?) payable {
    if name[address(msg.sender)].field_1792:
        name[address(msg.sender)][4][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function setUrl(string arg1) payable {
    if name[address(msg.sender)].field_1792:
        name[address(msg.sender)][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function setDesc(string arg1) payable {
    if name[address(msg.sender)].field_1792:
        name[address(msg.sender)][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function setName(string arg1) payable {
    if name[address(msg.sender)].field_1792:
        name[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
}

function sub_5385a9da(?) payable {
    if name[address(msg.sender)].field_1792:
        if name[address(msg.sender)].field_1280:
            name[address(msg.sender)].field_1280 = 0
        else:
            name[address(msg.sender)].field_1280 = 1
}

function sub_b6b5ef2a(?) payable {
    name[arg1].field_1536 += name[address(msg.sender)].field_1536
    name[address(msg.sender)].field_1536 = 0
    if name[address(msg.sender)].field_1792:
        emit code.data[5179 len 32]: name[address(msg.sender)].field_1792
    if name[address(arg1)].field_1792:
        emit code.data[5179 len 32]: name[address(arg1)].field_1792
}

function sub_33e249a7(?) payable {
    if not name[address(msg.sender)].field_1792:
        sub_5bfadae4++
        name[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        name[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        name[address(msg.sender)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        name[address(msg.sender)][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        name[address(msg.sender)][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        name[address(msg.sender)].field_1280 = arg6 or Mask(248, 8, name[address(msg.sender)].field_1280)
        name[address(msg.sender)].field_1536 += msg.value
        name[address(msg.sender)].field_1792 = sub_5bfadae4
        uint256(sub_effc99cd[stor2]) = msg.sender or Mask(96, 160, uint256(sub_effc99cd[stor2]))
        emit code.data[5179 len 32]: sub_5bfadae4
}



}
