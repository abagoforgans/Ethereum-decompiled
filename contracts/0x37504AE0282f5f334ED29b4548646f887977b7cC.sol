contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0; offset 256
address stor3;

function _fallback() {
    uint256(stor0.field_256) = 10^15
    Mask(96, 0, stor0.field_160) = 1
    stor3 = msg.sender
    return code.data[174 len 3004]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct rockOwners;
uint256 latestNewRockForSale;
address stor3;

function rockOwners(address arg1, uint256 arg2) {
    require arg2 < rockOwners[arg1].field_0
    return rockOwners[arg1][arg2].field_0
}

function latestNewRockForSale() {
    return latestNewRockForSale
}

function _fallback() payable {
  stop
}

function dontSellRock(uint256 arg1) {
    require msg.sender == stor0[arg1].field_0
    stor0[arg1].field_160 = 0
}

function rocks(uint256 arg1) {
    return stor0[arg1].field_0, bool(stor0[arg1].field_160), stor0[arg1].field_256, stor0[arg1].field_512
}

function getRockInfo(uint256 arg1) {
    return stor0[arg1].field_0, bool(stor0[arg1].field_160), stor0[arg1].field_256, stor0[arg1].field_512
}

function sellRock(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0[arg1].field_0
    require arg2 > 0
    stor0[arg1].field_256 = arg2
    stor0[arg1].field_160 = 1
}

function withdraw() {
    require msg.sender == stor3
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function giftRock(uint256 arg1, address arg2) {
    require msg.sender == stor0[arg1].field_0
    stor0[arg1].field_0 = arg2
    rockOwners[address(arg2)].field_0++
    if not rockOwners[address(arg2)].field_0 <= rockOwners[address(arg2)].field_0 + 1:
        idx = rockOwners[address(arg2)].field_0 + 1
        while rockOwners[address(arg2)].field_0 > idx:
            rockOwners[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    rockOwners[address(arg2)][rockOwners[address(arg2)].field_0].field_0 = arg1
}

function buyRock(uint256 arg1) payable {
    stor0[arg1].field_160 = 1
    require msg.value == stor0[arg1].field_256
    stor0[arg1].field_160 = 0
    stor0[arg1].field_512++
    if arg1 != latestNewRockForSale:
        call stor0[arg1].field_0 with:
           value stor0[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor0[arg1].field_0 = msg.sender
    rockOwners[address(msg.sender)].field_0++
    if not rockOwners[address(msg.sender)].field_0 <= rockOwners[address(msg.sender)].field_0 + 1:
        idx = rockOwners[address(msg.sender)].field_0 + 1
        while rockOwners[address(msg.sender)].field_0 > idx:
            rockOwners[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    rockOwners[address(msg.sender)][rockOwners[address(msg.sender)].field_0].field_0 = arg1
    if arg1 == latestNewRockForSale:
        if arg1 != 99:
            latestNewRockForSale++
            stor0[stor2].field_256 = (10^15 * latestNewRockForSale^2) + 10^15
            stor0[stor2].field_160 = 1
}

function rockOwningHistory(address arg1) {
    if not rockOwners[address(arg1)].field_0:
        mem[(32 * rockOwners[address(arg1)].field_0) + 160] = 32
        mem[(32 * rockOwners[address(arg1)].field_0) + 192] = rockOwners[address(arg1)].field_0
        mem[(32 * rockOwners[address(arg1)].field_0) + 224 len floor32(rockOwners[address(arg1)].field_0)] = mem[160 len floor32(rockOwners[address(arg1)].field_0)]
        return memory
          from (32 * rockOwners[address(arg1)].field_0) + 160
           len (96 * rockOwners[address(arg1)].field_0) + 64
    mem[160] = rockOwners[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * rockOwners[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = rockOwners[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rockOwners[address(arg1)].field_0) + 224 len floor32(rockOwners[address(arg1)].field_0)] = mem[160 len floor32(rockOwners[address(arg1)].field_0)]
    return Array(len=rockOwners[address(arg1)].field_0, data=mem[160 len floor32(rockOwners[address(arg1)].field_0)], mem[(32 * rockOwners[address(arg1)].field_0) + floor32(rockOwners[address(arg1)].field_0) + 224 len (32 * rockOwners[address(arg1)].field_0) - floor32(rockOwners[address(arg1)].field_0)]), 
}



}
