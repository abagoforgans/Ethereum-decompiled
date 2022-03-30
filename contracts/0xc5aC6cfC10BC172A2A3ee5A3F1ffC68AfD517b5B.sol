contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor6;

function _fallback() {
    require code.data[2638 len 20]
    stor0 = code.data[2638 len 20]
    require ext_code.size(code.data[2638 len 20])
    call code.data[2638 len 20].0x60fd902c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    require ext_call.return_data[12 len 20]
    stor6 = 0
    return code.data[278 len 2348]
}



// =====================  Runtime code  =====================


const AUCTION_STARTED = 2

const TRADING_STARTED = 4


address dutchAuctionAddress;
address gnosisTokenAddress;
uint256 totalContributions;
uint256 totalTokens;
uint256 totalBalance;
mapping of uint256 contributions;
uint8 stage;

function totalContributions() {
    return totalContributions
}

function contributions(address arg1) {
    return contributions[arg1]
}

function gnosisToken() {
    return gnosisTokenAddress
}

function totalTokens() {
    return totalTokens
}

function dutchAuction() {
    return dutchAuctionAddress
}

function totalBalance() {
    return totalBalance
}

function stage() {
    require stage <= 2
    return stage
}

function contribute() payable {
    require stage <= 2
    require not stage
    contributions[address(msg.sender)] += msg.value
    totalContributions += msg.value
    emit BidSubmission(msg.value, msg.sender);
}

function refund() {
    require stage <= 2
    require not stage
    contributions[address(msg.sender)] = 0
    totalContributions -= contributions[address(msg.sender)]
    emit RefundSubmission(contributions[address(msg.sender)], msg.sender);
    call msg.sender with:
       value contributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function bidProxy() {
    require stage <= 2
    require not stage
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.0xc040e6b8 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == 2
    stage = 1
    require ext_code.size(dutchAuctionAddress)
    call dutchAuctionAddress.bid(address rg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9050 wei
        args 0
    require ext_call.success
    return 1
}

function claimProxy() {
    require stage <= 2
    require stage == 1
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
    totalTokens = ext_call.return_data[0]
    totalBalance = eth.balance(this.address)
    stage = 2
}

function transfer() {
    require stage <= 2
    require stage == 2
    contributions[address(msg.sender)] = 0
    require totalContributions
    require ext_code.size(gnosisTokenAddress)
    call gnosisTokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, contributions[address(msg.sender)] * totalTokens / totalContributions
    require ext_call.success
    require totalContributions
    if contributions[address(msg.sender)] * totalBalance / totalContributions > 0:
        call msg.sender with:
           value contributions[address(msg.sender)] * totalBalance / totalContributions wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return (contributions[address(msg.sender)] * totalTokens / totalContributions)
}

function _fallback() payable {
    if dutchAuctionAddress == msg.sender:
        emit RefundReceived(msg.value);
    else:
        require stage <= 2
        require stage <= 2
        if not stage:
            require not stage
            contributions[address(msg.sender)] += msg.value
            totalContributions += msg.value
            emit BidSubmission(msg.value, msg.sender);
        else:
            require stage == 2
            require stage <= 2
            require stage == 2
            contributions[address(msg.sender)] = 0
            require totalContributions
            require ext_code.size(gnosisTokenAddress)
            call gnosisTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, contributions[address(msg.sender)] * totalTokens / totalContributions
            require ext_call.success
            require totalContributions
            if contributions[address(msg.sender)] * totalBalance / totalContributions > 0:
                call msg.sender with:
                   value contributions[address(msg.sender)] * totalBalance / totalContributions wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}



}
