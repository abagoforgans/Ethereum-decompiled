contract main {


// =======================  Init code  ======================


address stor0;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[2230 len 20]
    return code.data[101 len 2117]
}



// =====================  Runtime code  =====================


address owner;
uint256 currentEpoch;
uint256 initEpochBalance;
mapping of uint256 stor3;
address tokenCtrAddress;

function initEpochBalance() {
    return initEpochBalance
}

function currentEpoch() {
    return currentEpoch
}

function owner() {
    return owner
}

function tokenCtr() {
    return tokenCtrAddress
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        require arg1
        owner = arg1
}

function changeTokenContract(address arg1) {
    if owner == msg.sender:
        require arg1
        tokenCtrAddress = arg1
        emit TokenContractChanged(arg1);
}

function expectedPayout(address arg1) {
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.lock() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * initEpochBalance / ext_call.return_data[0])
}

function withdrawalProfit() {
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.numOfCurrentEpoch() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    if currentEpoch < ext_call.return_data[0]:
        call tokenCtrAddress.numOfCurrentEpoch() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        currentEpoch = ext_call.return_data[0]
        initEpochBalance = eth.balance(this.address)
        emit WithdrawalEnabled()
    call tokenCtrAddress.lock() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require stor3[address(msg.sender)] != currentEpoch
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.numOfCurrentEpoch() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenCtrAddress)
    call tokenCtrAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor3[address(msg.sender)] = ext_call.return_data[0]
    if initEpochBalance:
        require ext_call.return_data[0] * initEpochBalance / initEpochBalance == ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] * initEpochBalance / ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ProfitWithdrawn(msg.sender, ext_call.return_data[0] * initEpochBalance / ext_call.return_data[0]);
}



}
