contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;

function _fallback() payable {
    stor3 = code.data[3391 len 32]
    stor8 = code.data[3423 len 32]
    stor4 = code.data[3455 len 32]
    stor0 = code.data[3487 len 32]
    stor1 = code.data[3519 len 32]
    stor5 = code.data[3551 len 32]
    stor2 = code.data[3551 len 32]
    return code.data[235 len 3156]
}



// =====================  Runtime code  =====================


uint256 sub_b8bc0ed4;
uint256 sub_dd9bc881;
uint256 sub_ace687eb;
address contractorAddress;
uint256 sub_db2e4344;
uint256 sub_0b6ca20a;
uint256 paidOut;
uint256 sub_d46985f4;
uint8 sub_f87a3fb5; offset 160
address clientAddress;
uint256 stor8;
uint256 rewardDivisor;
uint256 sub_1eb2e76b;

function sub_0b6ca20a(?) payable {
    return sub_0b6ca20a
}

function client() payable {
    return clientAddress
}

function sub_1eb2e76b(?) payable {
    return sub_1eb2e76b
}

function paidOut() payable {
    return paidOut
}

function sub_ace687eb(?) payable {
    return sub_ace687eb
}

function sub_b8bc0ed4(?) payable {
    return sub_b8bc0ed4
}

function sub_d46985f4(?) payable {
    return sub_d46985f4
}

function sub_db2e4344(?) payable {
    return sub_db2e4344
}

function sub_dd9bc881(?) payable {
    return sub_dd9bc881
}

function rewardDivisor() payable {
    return rewardDivisor
}

function sub_f87a3fb5(?) payable {
    return sub_f87a3fb5
}

function contractor() payable {
    return contractorAddress
}

function _fallback() payable {
    revert 
}

function setRewardDivisor(uint256 arg1) payable {
    require msg.sender == clientAddress
    require msg.value <= 0
    rewardDivisor = arg1
}

function setDeploymentReward(uint256 arg1) payable {
    require msg.sender == clientAddress
    require msg.value <= 0
    sub_1eb2e76b = arg1
}

function sub_d7d9e76e(?) payable {
    require msg.sender == clientAddress
    require msg.value <= 0
    if arg1 >= sub_0b6ca20a:
        sub_ace687eb = arg1
}

function updateClientAddress(address arg1) payable {
    require msg.sender == clientAddress
    require msg.value <= 0
    stor8 = arg1 or Mask(96, 160, stor8)
}

function sign() payable {
    require msg.sender == clientAddress
    require msg.value == sub_b8bc0ed4
    require not sub_d46985f4
    call contractorAddress with:
       value sub_dd9bc881 wei
         gas 0 wei
    require ext_call.success
    sub_d46985f4 = block.timestamp
    sub_f87a3fb5 = 1
}

function payReward() payable {
    require clientAddress != msg.sender
    call clientAddress.DAOrewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    return 1
}

function returnRemainingEther() payable {
    require msg.sender == clientAddress
    call clientAddress.DAOrewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    sub_f87a3fb5 = 0
}

function getDailyPayment() payable {
    require msg.sender == contractorAddress
    call contractorAddress with:
       value (block.timestamp + -sub_d46985f4 + (24 * 3600) / 24 * 3600 * sub_ace687eb) - paidOut wei
         gas 0 wei
    if ext_call.success:
        paidOut = block.timestamp + -sub_d46985f4 + (24 * 3600) / 24 * 3600 * sub_ace687eb
}

function payOneTimeReward() payable {
    require clientAddress != msg.sender
    require msg.value >= sub_1eb2e76b
    call clientAddress.DAOrewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    return 1
}



}
