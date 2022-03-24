contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[71 len 3453]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 stor1;
mapping of uint8 stor2;

function admin() payable {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_28c10e42(?) payable {
    call stor3[arg1].field_0 with:
       value arg2 wei
         gas 50000 wei
    if ext_call.success:
        emit 0x41358737: stor3[arg1].field_0, arg2
}

function sub_e1bb147a(?) payable {
    if adminAddress != msg.sender:
        return 0
    stor1++
    stor3[stor1].field_0 = arg2 or Mask(96, 160, stor3[stor1].field_0)
    stor3[stor1].field_256 = arg1
    emit 0xd36cab16: address(arg2), stor1, arg1
    return stor1
}

function sub_9624a94e(?) payable {
    if adminAddress != msg.sender:
        return 0
    create contract with 0 wei
                    code: code.data[2519 len 934]
    stor2[address(create.new_address)] = 1
    emit ContractCreated(address(create.new_address));
    return address(create.new_address)
}

function deposit(uint256 arg1) payable {
    if stor2[address(msg.sender)]:
        emit 0xa9f3f556: msg.sender, msg.value
        call stor3[arg1].field_0 with:
           value msg.value wei
             gas 50000 wei
        if ext_call.success:
            emit 0x41358737: stor3[arg1].field_0, msg.value
}

function sub_d3bfa201(?) payable {
    if msg.sender == adminAddress:
        stor3[arg2].field_768++
        if not stor3[arg2].field_768 <= stor3[arg2].field_768 + 1:
            idx = stor3[arg2].field_768 + 1
            while stor3[arg2].field_768 > idx:
                stor3[arg2][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        stor[stor3[arg2].field_768 + ('array', 3, ('map', ('param', 'arg2'), ('name', 'stor3', 3)))].field_0 = arg1 or Mask(96, 160, stor[stor3[arg2].field_768 + ('array', 3, ('map', ('param', 'arg2'), ('name', 'stor3', 3)))].field_0)
        call address(arg1).0x848d0724 with:
             gas gas_remaining - 25050 wei
            args arg2, stor3[arg2].field_256
        require ext_call.success
        emit 0xb984a95a: address(arg1), arg2, stor3[arg2].field_256
}

function updateProductPrice(uint256 arg1, uint256 arg2) payable {
    if msg.sender == adminAddress:
        stor3[arg1].field_256 = arg2
        s = 0
        idx = 0
        while uint8(idx) < stor3[arg1].field_768:
            require uint8(idx) < stor3[arg1].field_768
            mem[96] = 0x848d072400000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            call stor[uint8(idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0.0x848d0724 with:
                 gas gas_remaining - 25050 wei
                args arg1, arg2
            require ext_call.success
            mem[0] = arg1
            mem[32] = 3
            s = stor[uint8(idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0
            idx = idx + 1
            continue 
        emit PriceUpdated(arg1, arg2);
}



}
