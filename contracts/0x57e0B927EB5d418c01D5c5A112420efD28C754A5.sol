contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = code.data[3867 len 32]
    return code.data[83 len 3784]
}



// =====================  Runtime code  =====================


address owner;
address sub_f74e54e1Address;
address oracleAddress;
mapping of struct sub_1d3325db;

function sub_1d3325db(?) payable {
    return sub_1d3325db[arg1].field_0, sub_1d3325db[arg1].field_256
}

function sub_655a5398(?) payable {
    return sub_1d3325db[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function Oracle() payable {
    return oracleAddress
}

function sub_f74e54e1(?) payable {
    return sub_f74e54e1Address
}

function sub_660e1c2f(?) payable {
    require msg.sender == owner
    call arg1.0x5ccaf589 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    sub_1d3325db[address(arg1)].field_0 = 0
    return 1
}

function sub_31d684fc(?) payable {
    create contract with 0 wei
                    code: code.data[3473 len 311]
    sub_1d3325db[address(create.new_address)].field_0 = arg1 or Mask(96, 160, sub_1d3325db[address(create.new_address)].field_0)
    emit 0x6ea4368b: address(arg1), address(create.new_address)
}

function _fallback() payable {
    require sub_1d3325db[address(msg.sender)].field_0 != 0
    if sub_1d3325db[address(msg.sender)].field_256 != 0:
        call sub_1d3325db[address(msg.sender)].field_256 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[1057 len 2416], sub_f74e54e1Address, oracleAddress, sub_1d3325db[address(msg.sender)].field_0
    sub_1d3325db[address(msg.sender)].field_256 = create.new_address or Mask(96, 160, sub_1d3325db[address(msg.sender)].field_256)
    call address(create.new_address) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    emit 0xa4dfbfb1: msg.sender, sub_f74e54e1Address, oracleAddress, address(create.new_address)
}



}
