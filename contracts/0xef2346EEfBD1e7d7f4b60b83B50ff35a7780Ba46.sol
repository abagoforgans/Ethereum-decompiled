contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor1; offset 160
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    address(stor1.field_0) = code.data[1338 len 20]
    uint16(stor1.field_160) = 0
    return code.data[113 len 1213]
}



// =====================  Runtime code  =====================


const getPot = eth.balance(this.address)


address owner;
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 176
address benefactorAddress;
uint256 numPledges;
mapping of struct pledges;

function refunded() {
    return bool(uint8(stor1.field_160))
}

function complete() {
    return bool(uint8(stor1.field_168))
}

function benefactor() {
    return benefactorAddress
}

function owner() {
    return owner
}

function numPledges() {
    return numPledges
}

function pledges(uint256 arg1) {
    return pledges[arg1].field_0, pledges[arg1].field_256, pledges[arg1].field_512
}

function _fallback() payable {
    revert
}

function pledge(bytes32 arg1) {
    revert
}

function drawdown() {
    require owner == msg.sender
    require not uint8(stor1.field_168)
    require not uint8(stor1.field_160)
    call benefactorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    uint8(stor1.field_168) = 1
}

function refund() {
    require owner == msg.sender
    require not uint8(stor1.field_168)
    require not uint8(stor1.field_160)
    idx = 0
    while idx < numPledges:
        mem[0] = idx
        mem[32] = 3
        call pledges[idx].field_256 with:
           value pledges[idx].field_0 wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        continue 
    uint8(stor1.field_160) = 1
    uint8(stor1.field_168) = 1
    Mask(80, 0, stor1.field_176) = 0
    stor1.field_256 % 1 = 0
}



}
