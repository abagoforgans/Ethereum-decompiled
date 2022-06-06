contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint16 stor7;

function _fallback() payable {
    revert
}

function getAvailableCardCount() {
    require stor6
    return (stor7 - stor1[block.timestamp / stor6])
}

function getRandomNumber(uint256 arg1) {
    require arg1
    require arg1
    return (block.timestamp % arg1)
}

function hasAvailableCard() {
    require stor6
    if stor0[address(msg.sender)][block.timestamp / stor6]:
        return not bool(stor0[address(msg.sender)][block.timestamp / stor6])
    return (stor1[block.timestamp / stor6] < stor7)
}

function getAnimalCount() {
    require ext_code.size(stor2)
    call stor2.getAnimalsCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNextPeriodTimestamp() {
    require stor6
    if not (block.timestamp / stor6) + 1:
        return 0
    require (block.timestamp / stor6) + 1
    require stor6 + (block.timestamp / stor6 * stor6) / (block.timestamp / stor6) + 1 == stor6
    return (stor6 + (block.timestamp / stor6 * stor6))
}

function getRandomAnimalId() {
    require ext_code.size(stor2)
    call stor2.getAnimalsCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    return (block.timestamp % ext_call.return_data[0])
}

function withdraw() {
    if block.timestamp < stor4:
        revert with 0, 'not started yet'
    if block.timestamp > stor5:
        revert with 0, 'ended'
    require stor6
    if stor0[address(msg.sender)][block.timestamp / stor6]:
        revert with 0, 'once / period'
    if stor1[block.timestamp / stor6] >= stor7:
        revert with 0, 'period maximum donations reached'
    require ext_code.size(stor2)
    call stor2.getAnimalsCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x8ba4cc3c with:
         gas gas_remaining wei
        args msg.sender, block.timestamp % ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[block.timestamp / stor6]++
    stor0[address(msg.sender)][block.timestamp / stor6] = 1
}



}
