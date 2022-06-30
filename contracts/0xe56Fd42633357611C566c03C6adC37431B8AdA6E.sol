contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function depositX() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_cfcaa498(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
        revert with 0, 'e0'
    stor0[address(arg1)] = 1
}

function sub_5781aa86(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
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

function sub_14d2d884(?) {
    require calldata.size - 4 >= 160
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if not stor0[msg.sender]:
                    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                        revert with 0, 'e0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        return 0
    if block.number > arg5:
        return 0
    require ext_code.size(arg2)
    call arg2.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg4, 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_aa94f177(?) {
    require calldata.size - 4 >= 64
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if not stor0[msg.sender]:
                    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                        revert with 0, 'e0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
