contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = code.data[1227 len 32]
    return code.data[146 len 1081]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_0b4d246f;

function sub_0b4d246f(?) payable {
    return sub_0b4d246f[arg1]
}

function owner() payable {
    return owner
}

function kill() payable {
    if owner != msg.sender:
    emit 0xaf2f60c5: Array(len=26, data='Good bye cruel world ... !')
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function mintNewCoins(uint256 arg1) payable {
    if msg.sender == owner:
        sub_0b4d246f[address(msg.sender)] += arg1
}

function sendCoins(address arg1, uint256 arg2) payable {
    if sub_0b4d246f[address(msg.sender)] < arg2:
        return 0
    sub_0b4d246f[address(msg.sender)] -= arg2
    sub_0b4d246f[address(arg1)] += arg2
    emit 0x4e3c67ac: msg.sender, address(arg1), arg2
    return 1
}



}
