contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor6;

function _fallback() {
    require code.data[3243 len 20]
    stor0 = code.data[3243 len 20]
    require ext_code.size(stor0)
    call stor0.0x60fd902c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    stor6 = 0
    return code.data[426 len 2805]
}



// =====================  Runtime code  =====================


const AUCTION_STARTED = 2

const TRADING_STARTED = 4


address dutchAuctionAddress;
address gnosisTokenAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint8 stage;

function gnosisToken() {
    return gnosisTokenAddress
}

function dutchAuction() {
    return dutchAuctionAddress
}

function stage() {
    require stage <= 1
    return stage
}

function transfer() {
    require stage <= 1
    require stage == 1
    stor5[address(msg.sender)] = 0
    require stor2
    require ext_code.size(gnosisTokenAddress)
    call gnosisTokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, stor3 * stor5[address(msg.sender)] / stor2
    require ext_call.success
    require stor2
    if stor4 * stor5[address(msg.sender)] / stor2 > 0:
        call msg.sender with:
           value stor4 * stor5[address(msg.sender)] / stor2 wei
             gas 2300 * is_zero(value) wei
    return (stor3 * stor5[address(msg.sender)] / stor2)
}

function contribute() payable {
    require stage <= 1
    require not stage
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.0xc040e6b8 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == 2
    stor5[address(msg.sender)] += msg.value
    stor2 += msg.value
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.bid(address rg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9050 wei
        args 0
    require ext_call.success
    emit BidSubmission(msg.value, msg.sender);
}

function claimProxy() {
    require stage <= 1
    require not stage
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.0xc040e6b8 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == 4
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.claimTokens(address rg1) with:
         gas gas_remaining - 50 wei
        args 0
    require ext_call.success
    require ext_code.size(gnosisTokenAddress)
    call gnosisTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    stor3 = ext_call.return_data[0]
    stor4 = eth.balance(this.address)
    stage = 1
}

function _fallback() payable {
    if msg.sender == dutchAuctionAddress:
        emit RefundReceived(msg.value);
    else:
        require stage <= 1
        require stage <= 1
        if stage:
            require stage == 1
            require stage <= 1
            require stage == 1
            stor5[address(msg.sender)] = 0
            require stor2
            require ext_code.size(gnosisTokenAddress)
            call gnosisTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, stor3 * stor5[address(msg.sender)] / stor2
            require ext_call.success
            require stor2
            if stor4 * stor5[address(msg.sender)] / stor2 > 0:
                call msg.sender with:
                   value stor4 * stor5[address(msg.sender)] / stor2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require not stage
            require ext_code.size(dutchAuctionAddress)
            call dutchAuctionAddress.0xc040e6b8 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_call.return_data[0] == 2
            stor5[address(msg.sender)] += msg.value
            stor2 += msg.value
            require ext_code.size(dutchAuctionAddress)
            call dutchAuctionAddress.bid(address rg1) with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 9050 wei
                args 0
            require ext_call.success
            emit BidSubmission(msg.value, msg.sender);
}



}
