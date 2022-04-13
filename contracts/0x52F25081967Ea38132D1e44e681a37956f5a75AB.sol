contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 2 * 10^18
    stor2 = 0
    stor3 = 4 * 10^18
    require not msg.value
    return code.data[60 len 731]
}



// =====================  Runtime code  =====================


const referee = 0x6a0d0ebf1e532840baf224e1bd6a1d4489d5d78d


mapping of address stor0;
uint256 stor1;
uint256 deadline;
uint256 highestBid;
bool stor3;
uint256 stor3; offset 1
uint256 lowestBid;

function deadline() {
    return uint256(deadline)
}

function lowestBid() {
    return lowestBid
}

function highestBid() {
    return highestBid
}

function _fallback() payable {
    require not msg.value % 2 * 10^15
    if msg.value > highestBid:
        require eth.balance(this.address) - msg.value < uint256(deadline)
    if msg.value < lowestBid:
        lowestBid = msg.value
    if msg.value > highestBid:
        highestBid = msg.value
    stor0[msg.value] = msg.sender
    if eth.balance(this.address) >= uint256(deadline):
        highestBid = 0
        bool(stor3.field_0) = 0
        uint255(stor3.field_1) = uint255(stor1)
        if stor0[Mask(255, 1, uint256(stor3.field_0) + stor2)]:
            call stor0[Mask(255, 1, uint256(stor3.field_0) + stor2)] with:
               value eth.balance(this.address) - 10^17 wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor0[stor2] with:
               value eth.balance(this.address) - 10^17 wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0x6a0d0ebf1e532840baf224e1bd6a1d4489d5d78d with:
           value 10^17 wei
             gas 0 wei
}



}
