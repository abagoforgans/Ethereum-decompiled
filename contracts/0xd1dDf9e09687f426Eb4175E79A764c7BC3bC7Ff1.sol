contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    address(stor0.field_0) = 0
    Mask(96, 0, stor0.field_160) = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    require code.data[1834 len 20]
    address(stor0.field_0) = msg.sender
    stor1 = code.data[1834 len 20]
    return code.data[330 len 1492]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address creatorAddress;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 totalVotes;
uint256 votedYes;

function creator() {
    return creatorAddress
}

function totalVotes() {
    return totalVotes
}

function getVoteBy(address arg1) {
    require bool(stor2[address(arg1)]) == 1
    return bool(stor3[address(arg1)])
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function votedYes() {
    return votedYes
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == creatorAddress
    Mask(96, 0, stor0.field_160) = 1
}

function vote(bool arg1) {
    require not uint8(stor0.field_160)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= 5 * 10^18
    require not stor2[address(msg.sender)]
    stor3[address(msg.sender)] = uint8(arg1)
    stor2[address(msg.sender)] = 1
    totalVotes++
    if arg1:
        votedYes++
}



}
