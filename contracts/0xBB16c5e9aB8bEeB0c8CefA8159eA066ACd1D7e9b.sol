contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = code.data[3672 len 32]
    return code.data[83 len 3589]
}



// =====================  Runtime code  =====================


address owner;
address sub_f74e54e1Address;
address oracleAddress;
mapping of struct stor3;

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
    call arg1.0x5ccaf589 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    stor3[address(arg1)].field_0 = 0
    return 1
}

function sub_31d684fc(?) payable {
    create contract with 0 wei
                    code: code.data[3278 len 311]
    stor3[address(create.new_address)].field_0 = arg1 or Mask(96, 160, stor3[address(create.new_address)].field_0)
    emit 0x6ea4368b: address(arg1), address(create.new_address)
}

function _fallback() payable {
    require stor3[address(msg.sender)].field_0 != 0
    if stor3[address(msg.sender)].field_256 != 0:
        call stor3[address(msg.sender)].field_256 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[862 len 2416], sub_f74e54e1Address, oracleAddress, stor3[address(msg.sender)].field_0
    stor3[address(msg.sender)].field_256 = create.new_address or Mask(96, 160, stor3[address(msg.sender)].field_256)
    call address(create.new_address) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    emit 0xb03dc97b: sub_f74e54e1Address, oracleAddress, address(create.new_address)
}



}
