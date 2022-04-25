contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor4;
uint256 stor4; offset 8

function _fallback() payable {
    uint8(stor4.field_0) = 0
    Mask(248, 0, stor4.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[4224 len 4672]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[263 len 3961]
}



// =====================  Runtime code  =====================


const duration = (720 * 24 * 3600)

const minBid = 10^18

const maxBid = 5000 * 10^18


address beneficiaryAddress;
address rmtAddress;
uint256 begin;
uint256 end;
uint8 stor4;
uint8 stor4; offset 8
address stor4;
address highestBidderAddress; offset 16
uint256 stor4; offset 8
uint256 highestBid;
mapping of uint256 pendingReturns;

function begin() {
    return begin
}

function pendingReturns(address arg1) {
    return pendingReturns[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function closed() {
    return bool(uint8(stor4.field_8))
}

function highestBidder() {
    return highestBidderAddress
}

function rmt() {
    return rmtAddress
}

function sub_c851b084(?) {
    return bool(uint8(stor4.field_0))
}

function pendingReturn(address arg1) {
    require arg1
    return pendingReturns[address(arg1)]
}

function highestBid() {
    return highestBid
}

function end() {
    return end
}

function _fallback() payable {
    revert
}

function updateBeneficiary(address arg1) {
    require msg.sender == beneficiaryAddress
    require arg1
    emit BeneficiaryUpdated(beneficiaryAddress, arg1);
    beneficiaryAddress = arg1
}

function withdraw() {
    require pendingReturns[address(msg.sender)] > 0
    emit Withdrawn(msg.sender, pendingReturns[address(msg.sender)]);
    pendingReturns[address(msg.sender)] = 0
    call msg.sender with:
       value pendingReturns[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function close() {
    require msg.sender == beneficiaryAddress
    require block.timestamp > end
    require not uint8(stor4.field_8)
    Mask(248, 0, stor4.field_8) = 1
    emit AuctionClosed(address(stor4.field_0), highestBid);
    call beneficiaryAddress with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(rmtAddress)
    call rmtAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor4.field_0), 1
    require ext_call.success
    require ext_call.return_data[0]
}

function bid() payable {
    if not uint8(stor4.field_0):
        uint8(stor4.field_0) = 1
        begin = block.timestamp
        end = begin + (720 * 24 * 3600)
    require block.timestamp <= end
    require not uint8(stor4.field_8)
    require highestBidderAddress != msg.sender
    require msg.value >= 10^18
    require pendingReturns[address(msg.sender)] + msg.value >= pendingReturns[address(msg.sender)]
    require pendingReturns[address(msg.sender)] + msg.value > highestBid
    if highestBidderAddress:
        pendingReturns[address(stor4.field_0)] = highestBid
    highestBidderAddress = msg.sender
    require pendingReturns[address(msg.sender)] + msg.value >= pendingReturns[address(msg.sender)]
    highestBid = pendingReturns[address(msg.sender)] + msg.value
    pendingReturns[address(msg.sender)] = 0
    emit NewHighestBid(address(stor4.field_0), highestBid);
    if highestBid >= 5000 * 10^18:
        require not uint8(stor4.field_8)
        Mask(248, 0, stor4.field_8) = 1
        emit AuctionClosed(address(stor4.field_0), highestBid);
        call beneficiaryAddress with:
           value highestBid wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(rmtAddress)
        call rmtAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(stor4.field_0), 1
        require ext_call.success
        require ext_call.return_data[0]
}



}
