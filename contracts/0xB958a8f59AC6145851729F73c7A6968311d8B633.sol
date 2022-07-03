contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function depositX() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_38db9cf0(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
        revert with 0, 'e0'
    stor1[address(arg1)] = 1
}

function sub_87180a67(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
        revert with 0, 'e0'
    stor1[address(arg1)] = 0
}

function sub_cfcaa498(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
        revert with 0, 'e0'
    stor0[address(arg1)] = 1
}

function sub_f79b6ec0(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
        revert with 0, 'e0'
    stor0[address(arg1)] = 0
}

function sub_5781aa86(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if msg.sender != 0x513a916e91af25745a01b2709d2083b6b3477815:
                    if not stor0[msg.sender]:
                        if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                            revert with 0, 'e0'
    call 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_92379af7(?) {
    require calldata.size - 4 >= 64
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if msg.sender != 0x513a916e91af25745a01b2709d2083b6b3477815:
                    if not stor0[msg.sender]:
                        if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                            revert with 0, 'e0'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6bbc0545(?) {
    require calldata.size - 4 >= 64
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if msg.sender != 0x513a916e91af25745a01b2709d2083b6b3477815:
                    if not stor0[msg.sender]:
                        if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                            revert with 0, 'e0'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_8b9d7cd3(?) {
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if msg.sender != 0x513a916e91af25745a01b2709d2083b6b3477815:
                    if not stor0[msg.sender]:
                        if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                            revert with 0, 'e0'
    mem[96] = call.data[4]
    if not stor1[call.data[16 len 20]]:
        revert with 0, 'e0'
    mem[96 len calldata.size - 36] = call.data[36 len calldata.size - 36]
    delegate call.data[4] with:
       funct call.data[4 len 4]
         gas -1 wei
        args mem[100 len calldata.size - 40]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
