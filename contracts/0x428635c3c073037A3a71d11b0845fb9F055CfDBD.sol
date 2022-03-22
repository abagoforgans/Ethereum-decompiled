contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1099]




// =====================  Runtime code  =====================


uint256 sub_b8bc0ed4;
uint256 sub_dd9bc881;
uint256 sub_ace687eb;
address contractorAddress;
uint256 stor3;
uint256 sub_db2e4344;
uint256 sub_0b6ca20a;
uint256 paidOut;
uint256 sub_d46985f4;
uint128 stor8; offset 160
address clientAddress;
uint256 stor8;
uint8 sub_f87a3fb5; offset 160
address sub_cda5f5d5Address;
uint256 stor9;

function sub_0b6ca20a(?) payable {
    return sub_0b6ca20a
}

function client() payable {
    return clientAddress
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

function sub_cda5f5d5(?) payable {
    return sub_cda5f5d5Address
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

function sub_f87a3fb5(?) payable {
    return sub_f87a3fb5
}

function contractor() payable {
    return address(contractorAddress)
}

function _fallback() payable {
    revert 
}

function sub_d7d9e76e(?) payable {
    require clientAddress == msg.sender
    require msg.value <= 0
    if arg1 >= sub_0b6ca20a:
        sub_ace687eb = arg1
}

function updateClientAddress(address arg1) payable {
    require clientAddress == msg.sender
    require msg.value <= 0
    uint256(stor8.field_0) = arg1 or Mask(96, 160, uint256(stor8.field_0))
}

function sub_1f5338e3(?) payable {
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    stor9 = arg2 or Mask(96, 160, stor9)
    uint256(stor8.field_0) = Mask(96, 0, stor8.field_160)
    sub_db2e4344 = arg3
    sub_b8bc0ed4 = arg4
    sub_dd9bc881 = arg5
    sub_0b6ca20a = arg6
    sub_ace687eb = arg6
}

function sign() payable {
    require msg.sender == sub_cda5f5d5Address
    require msg.value == sub_b8bc0ed4
    require 0 == sub_d46985f4
    call address(contractorAddress) with:
       value sub_dd9bc881 wei
         gas 0 wei
    require ext_call.success
    sub_d46985f4 = block.timestamp
    sub_f87a3fb5 = 1
}

function returnRemainingEther() payable {
    require clientAddress == msg.sender
    call sub_cda5f5d5Address.DAOrewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    sub_f87a3fb5 = 0
}

function getDailyPayment() payable {
    require address(contractorAddress) == msg.sender
    if (block.timestamp + -sub_d46985f4 + (24 * 3600) / 24 * 3600 * sub_ace687eb) - paidOut <= eth.balance(this.address):
        call address(contractorAddress) with:
           value (block.timestamp + -sub_d46985f4 + (24 * 3600) / 24 * 3600 * sub_ace687eb) - paidOut wei
             gas 0 wei
        if ext_call.success:
            paidOut = block.timestamp + -sub_d46985f4 + (24 * 3600) / 24 * 3600 * sub_ace687eb
    else:
        call address(contractorAddress) with:
           value eth.balance(this.address) wei
             gas 0 wei
        if ext_call.success:
            paidOut += eth.balance(this.address)
}



}
