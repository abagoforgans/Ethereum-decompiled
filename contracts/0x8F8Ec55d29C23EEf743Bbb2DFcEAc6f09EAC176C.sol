contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 925]




// =====================  Runtime code  =====================


array of uint256 nickname;

function getNickname(address arg1) {
    return nickname[address(arg1)][0 len nickname[address(arg1)].length]
}

function _fallback() payable {
    revert 
}

function setNickname(string arg1) {
    require arg1.length >= 2
    require arg1.length <= 30
    nickname[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit 0xebe9f307: msg.sender, Array(len=arg1.length, data=arg1[all])
}



}
