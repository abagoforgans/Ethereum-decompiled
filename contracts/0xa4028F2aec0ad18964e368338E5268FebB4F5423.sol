contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor5 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor0 = code.data[1682 len 20]
    stor1 = code.data[1714 len 20]
    stor2 = code.data[1734 len 32]
    stor3 = code.data[1766 len 32]
    stor4 = code.data[1798 len 32]
    return code.data[162 len 1508]
}



// =====================  Runtime code  =====================


const dust = 10^15


address adminAddress;
address treasuryAddress;
uint256 beginBlock;
uint256 endBlock;
uint256 weiPerAtom;
uint8 isHalted;
mapping of uint256 record;
uint256 totalWei;
uint256 totalAtom;

function endBlock() {
    return endBlock
}

function record(address arg1) {
    return record[arg1]
}

function weiPerAtom() {
    return weiPerAtom
}

function totalAtom() {
    return totalAtom
}

function treasury() {
    return treasuryAddress
}

function totalWei() {
    return totalWei
}

function beginBlock() {
    return beginBlock
}

function isHalted() {
    return bool(isHalted)
}

function admin() {
    return adminAddress
}

function kill() {
    require adminAddress == msg.sender
    require block.number >= endBlock
    selfdestruct(treasuryAddress)
}

function _fallback() payable {
    revert
}

function adjustRate(uint256 arg1) {
    require adminAddress == msg.sender
    weiPerAtom = arg1
}

function halt() {
    require adminAddress == msg.sender
    require block.number >= beginBlock
    require block.number < endBlock
    require not isHalted
    isHalted = 1
    emit Halted()
}

function unhalt() {
    require adminAddress == msg.sender
    require block.number >= beginBlock
    require block.number < endBlock
    require isHalted
    isHalted = 0
    emit Unhalted()
}

function donate(address arg1, address arg2, bytes4 arg3) payable {
    require block.number >= beginBlock
    require block.number < endBlock
    require not isHalted
    require msg.value >= 10^15
    require Mask(32, 224, arg3) == Mask(32, 224, sha3(arg2 xor arg1))
    call treasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require weiPerAtom
    record[address(arg1)] += msg.value / weiPerAtom
    totalWei += msg.value
    totalAtom += msg.value / weiPerAtom
    emit Received(address(arg2), msg.value, weiPerAtom, arg1);
}



}
