contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor5 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    stor0 = code.data[1832 len 20]
    stor1 = code.data[1864 len 20]
    stor2 = code.data[1884 len 32]
    stor3 = code.data[1916 len 32]
    stor4 = code.data[1948 len 32]
    return code.data[162 len 1658]
}



// =====================  Runtime code  =====================


const dust = 10^15


address adminAddress;
address treasuryAddress;
uint256 beginBlock;
uint256 endBlock;
uint256 sub_f5c96216;
uint8 stor5;
mapping of uint256 record;
mapping of address sub_59a5aa33;
uint256 totalEther;
uint256 totalAtom;

function endBlock() {
    return endBlock
}

function record(address arg1) {
    return record[arg1]
}

function sub_59a5aa33(?) {
    return sub_59a5aa33[arg1]
}

function totalAtom() {
    return totalAtom
}

function treasury() {
    return treasuryAddress
}

function beginBlock() {
    return beginBlock
}

function totalEther() {
    return totalEther
}

function isHalted() {
    return bool(stor5)
}

function sub_f5c96216(?) {
    return sub_f5c96216
}

function admin() {
    return adminAddress
}

function kill() {
    require adminAddress == msg.sender
    require block.number >= endBlock
    selfdestruct(treasuryAddress)
}

function _fallback() {
    revert
}

function halt() {
    require adminAddress == msg.sender
    require block.number >= beginBlock
    require block.number < endBlock
    require not stor5
    stor5 = 1
    emit Halted()
}

function unhalt() {
    require adminAddress == msg.sender
    require block.number >= beginBlock
    require block.number < endBlock
    require stor5
    stor5 = 0
    emit Unhalted()
}

function adjustRate(uint256 arg1) {
    require adminAddress == msg.sender
    require block.number >= beginBlock
    require block.number < endBlock
    require not stor5
    sub_f5c96216 = arg1
}

function sub_ebb41ad6(?) payable {
    require block.number >= beginBlock
    require block.number < endBlock
    require not stor5
    require msg.value >= 10^15
    require arg3 == sha3(arg2 xor arg1)
    call treasuryAddress with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    record[address(arg1)] += msg.value * sub_f5c96216
    sub_59a5aa33[address(arg1)] = arg2
    totalEther += msg.value
    totalAtom += msg.value * sub_f5c96216
    emit Received(msg.value, sub_f5c96216, arg1);
}



}
