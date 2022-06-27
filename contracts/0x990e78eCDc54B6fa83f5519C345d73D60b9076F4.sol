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

function sub_8dbc898f(?) {
    require calldata.size - 4 >= 384
    require cd[292] <= 4294967296
    require cd[292] + 36 <= calldata.size
    require ('cd', 292).length <= 4294967296 and cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
    if msg.sender != 0x44dba507b909a6f92f3a708a844d4c4f23622bee:
        if msg.sender != 0xed7ce3de532213314bb07622d8bf606a4ba03cf1:
            if msg.sender != 0xe185e2ab092e8a046cbb815174d9d6aae1c91d9a:
                if not stor0[msg.sender]:
                    if msg.sender != 0xb3e20b057cbf2c0d9d099bac6772af0c948c6ade:
                        revert with 0, 'e0'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[68] == 1:
        if ext_call.return_data[0] <= cd[132]:
            return code.data[4030 len 64]
    if cd[68] == 2:
        if ext_call.return_data[0] >= cd[132]:
            return code.data[4030 len 64]
    if not address(cd[196]):
        if 1 == cd[100]:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[164]:
                return code.data[4030 len 64]
        if cd[100] == 2:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[164]:
                return code.data[4030 len 64]
    else:
        if 1 == cd[100]:
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[164]:
                return code.data[4030 len 64]
        if cd[100] == 2:
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).getConnectorBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[164]:
                return code.data[4030 len 64]
    if block.number > cd[228]:
        return code.data[4030 len 64]
    if cd[260]:
        require ext_code.size(address(cd[36]))
        call address(cd[36]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value cd[324] wei
             gas gas_remaining wei
            args 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < ('cd', 292).length
        require ext_code.size(address(('cd', 292)[1]))
        staticcall address(('cd', 292)[1]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len floor32(('cd', 292).length)]), ext_call.return_data[0], 1
    else:
        require 1 < ('cd', 292).length
        require ext_code.size(address(('cd', 292)[1]))
        staticcall address(('cd', 292)[1]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value cd[324] wei
             gas gas_remaining wei
            args Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len floor32(('cd', 292).length)]), cd[324], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[36]))
        call address(cd[36]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[324] + cd[356] > ext_call.return_data[0]:
        revert with 0, 'e1'
    return ext_call.return_data[0], ext_call.return_data[0]
}



}
