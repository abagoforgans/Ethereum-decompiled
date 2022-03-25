contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    require msg.value <= 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[48 len 1102]
}



// =====================  Runtime code  =====================


const workshop = 0xc78310231aa53bd3d0fea2f8c705c67730929d8f


address singularDTVTokenAddress;
uint256 stor0;
address singularDTVCrowdfundingAddress;
uint256 stor1;
address owner;
uint256 totalRevenue;
mapping of uint256 revenueAtTimeOfWithdraw;
mapping of uint256 owed;

function revenueAtTimeOfWithdraw(address arg1) payable {
    return revenueAtTimeOfWithdraw[arg1]
}

function singularDTVToken() payable {
    return address(singularDTVTokenAddress)
}

function owner() payable {
    return owner
}

function singularDTVCrowdfunding() payable {
    return address(singularDTVCrowdfundingAddress)
}

function totalRevenue() payable {
    return totalRevenue
}

function owed(address arg1) payable {
    return owed[arg1]
}

function _fallback() payable {
  stop
}

function depositRevenue() payable {
    call address(singularDTVCrowdfundingAddress).campaignEndedSuccessfully() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    totalRevenue += msg.value
    return 1
}

function setup(address arg1, address arg2) payable {
    require msg.value <= 0
    require owner == msg.sender
    if address(singularDTVCrowdfundingAddress) != 0:
        return 0
    if address(singularDTVTokenAddress) != 0:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    uint256(stor0) = arg2 or Mask(96, 160, uint256(stor0))
    return 1
}

function softWithdrawRevenueFor(address arg1) payable {
    require msg.value <= 0
    call address(singularDTVTokenAddress).totalSupply() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(singularDTVTokenAddress).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    revenueAtTimeOfWithdraw[address(arg1)] = totalRevenue
    owed[address(arg1)] += (totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
    return ((totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function withdrawRevenue() payable {
    require msg.value <= 0
    call address(singularDTVTokenAddress).totalSupply() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(singularDTVTokenAddress).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    revenueAtTimeOfWithdraw[address(msg.sender)] = totalRevenue
    owed[address(msg.sender)] = 0
    if ((totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + owed[address(msg.sender)] <= 0:
        return (((totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + owed[address(msg.sender)])
    call msg.sender with:
       value ((totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + owed[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
    return (((totalRevenue * ext_call.return_data[0]) - (revenueAtTimeOfWithdraw[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + owed[address(msg.sender)])
}



}
