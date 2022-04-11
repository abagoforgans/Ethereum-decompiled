contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    emit Log('SimpleAndreiCoin owner set.');
    return code.data[184 len 1235]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_a7698353;

function owner() {
    return owner
}

function sub_a7698353(?) {
    return sub_a7698353[arg1]
}

function _fallback() payable {
    revert
}

function sub_cfabd2e1(?) {
    if msg.sender == owner:
        sub_a7698353[address(arg1)] += arg2
        emit Log('SimpleAndreiCoins minted.');
}

function sub_2ba2d69a(?) {
    if sub_a7698353[address(msg.sender)] >= arg2:
        sub_a7698353[address(arg1)] += arg2
        sub_a7698353[address(msg.sender)] -= arg2
        emit 0x84902c5d: msg.sender, address(arg1), arg2
        emit Log('Coins sent, check Tran logs.');
}



}
