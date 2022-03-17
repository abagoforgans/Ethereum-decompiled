contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2604]




// =====================  Runtime code  =====================


address sub_fffff305Address;
uint256 stor0;
mapping of struct accounts;

function accounts(address arg1) payable {
    return accounts[arg1].field_0, accounts[arg1].field_0, accounts[arg1].field_128
}

function sub_fffff305(?) payable {
    return address(sub_fffff305Address)
}

function _fallback() payable {
  stop
}

function setLedger(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function getUserInfo(address arg1) payable {
    if uint8(accounts[address(arg1)].field_128 % 1):
        return uint64(block.timestamp - accounts[address(arg1)].field_64)
    else:
        return 0
}

function sub_15443d65(?) payable {
    if accounts[address(arg1)].field_0:
        call address(sub_fffff305Address).0x71164d26 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            accounts[address(arg1)].field_128 = 0
}

function sub_d04cb3b9(?) payable {
    call address(sub_fffff305Address).0x71164d26 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if not accounts[address(arg1)].field_0:
            accounts[address(arg1)].field_0 = block.timestamp or Mask(192, 64, accounts[address(arg1)].field_0)
            accounts[address(arg1)].field_64 = Mask(192, 0, block.timestamp - (744 * 24 * 3600))
        accounts[address(arg1)].field_128 = 1
}

function vote(uint64 arg1, uint64 arg2) payable {
    if accounts[address(msg.sender)].field_0:
        if accounts[address(msg.sender)].field_128 == 1:
            if uint64(accounts[address(msg.sender)].field_64 + arg2) < block.timestamp:
                accounts[address(msg.sender)].field_64 = Mask(192, 0, accounts[address(msg.sender)].field_64 + arg2)
                call address(sub_fffff305Address).0x7da9a481 with:
                     gas gas_remaining - 25050 wei
                    args arg1 << 192, arg2
                require ext_call.success
}

function sub_d06213d8(?) payable {
    if accounts[address(arg1)].field_0:
        call address(sub_fffff305Address).0x71164d26 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            accounts[address(arg2)].field_0 = accounts[address(arg1)].field_0
            accounts[address(arg2)].field_64 = accounts[address(arg1)].field_64
            accounts[address(arg2)].field_128 = accounts[address(arg1)].field_128
            accounts[address(arg1)].field_0 = 0
            accounts[address(arg1)].field_64 = 0
            accounts[address(arg1)].field_128 = 0
}



}
