contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
mapping of uint8 stor1;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 15000
    require not msg.value
    stor3 = code.data[1663 len 20]
    stor0[1] = 333
    stor0[2] = 666
    stor0[3] = 1000
    stor1[0x2814495c778a1f168782587bb1cc38936ac98541] = 1
    stor1[0xb94a75e6fd07bfba543930a500e1648c2e8c9622] = 1
    stor1[0x59c582aefb682e0f32c9274a6cd1c2aa45353a1f] = 1
    return code.data[463 len 1188]
}



// =====================  Runtime code  =====================


const firstTimeLine = 1513864696

const thirdTimeLine = 1513865896

const exponent = 100 * 10^6

const secondTimeLine = 1513865296

const limitAmount = 15000


mapping of uint256 stor0;
mapping of uint8 stor1;
uint256 unlockTimeLine;
address originalContractAddress;
uint256 balance;

function unlockTimeLine() {
    return unlockTimeLine
}

function balance() {
    return balance
}

function originalContract() {
    return originalContractAddress
}

function _fallback() payable {
    revert
}

function unlock() {
    require block.timestamp > 1513864696
    require bool(stor1[address(msg.sender)]) == 1
    if block.timestamp >= 1513864696:
        unlockTimeLine = 1
        if block.timestamp >= 1513865296:
            unlockTimeLine = 2
            if block.timestamp >= 1513865896:
                unlockTimeLine = 3
    require balance + (15000 * stor0[stor2] / 1000) - 15000 > 0
    require ext_code.size(originalContractAddress)
    call originalContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balance + (15000 * stor0[stor2] / 1000) - 15000
    require ext_call.success
    require ext_call.return_data[0]
    balance = -(15000 * stor0[stor2] / 1000) + 15000
}



}
