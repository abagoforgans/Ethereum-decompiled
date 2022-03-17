contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2603]




// =====================  Runtime code  =====================


address sub_1c582cf7Address;
uint256 stor0;
mapping of struct accounts;

function sub_1c582cf7(?) payable {
    return address(sub_1c582cf7Address)
}

function accounts(address arg1) payable {
    return accounts[arg1].field_0, accounts[arg1].field_0, accounts[arg1].field_128
}

function _fallback() payable {
  stop
}

function setLedger(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_00108de0(?) payable {
    if uint8(accounts[address(arg1)].field_128 % 1):
        return uint64(block.timestamp - accounts[address(arg1)].field_64)
    else:
        return 0
}

function sub_bca3ccd1(?) payable {
    if accounts[address(arg1)].field_0:
        call address(sub_1c582cf7Address).0x51fb2bac with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            accounts[address(arg1)].field_128 = 0
}

function sub_ae5ac960(?) payable {
    call address(sub_1c582cf7Address).0x51fb2bac with:
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
                call address(sub_1c582cf7Address).0x8d541f35 with:
                     gas gas_remaining - 25050 wei
                    args arg1 << 192, arg2
                require ext_call.success
}

function sub_e33722bc(?) payable {
    if accounts[address(arg1)].field_0:
        call address(sub_1c582cf7Address).0x51fb2bac with:
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
