contract main {




// =====================  Runtime code  =====================


#
#  - settle()
#
address owner;
uint256 validAmount;
mapping of struct voters;
mapping of struct shareholders;
array of address sub_56b16162;
array of struct sub_ab01c303;
array of address sub_614cb988;
address sub_08d2d246Address;
uint256 stor7;
address sub_0fc922d1Address;
uint256 sub_f443e231;
uint256 poolTotalAmount;
uint256 sub_f37f2107;
uint256 sub_47c8eb0b;
uint256 sub_d30cda85;
uint256 sub_2dbcc7fe;
array of uint256 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
array of uint8 stor19;
uint256 stor20;
uint256 stor25;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint8 stor34;

function sub_08d2d246(?) {
    return address(sub_08d2d246Address)
}

function sub_0fc922d1(?) {
    return sub_0fc922d1Address
}

function sub_2dbcc7fe(?) {
    return sub_2dbcc7fe
}

function sub_47c8eb0b(?) {
    return sub_47c8eb0b
}

function sub_56b16162(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_56b16162.length
    return address(sub_56b16162[arg1])
}

function shareholders(address arg1) {
    require calldata.size - 4 >= 32
    return shareholders[arg1].field_0, shareholders[arg1].field_256, shareholders[arg1].field_512
}

function sub_614cb988(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_614cb988.length
    return sub_614cb988[arg1]
}

function validAmount() {
    return validAmount
}

function owner() {
    return owner
}

function voters(address arg1) {
    require calldata.size - 4 >= 32
    return voters[arg1].field_0, voters[arg1].field_256, voters[arg1].field_512, voters[arg1].field_768, voters[arg1].field_1024
}

function sub_ab01c303(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ab01c303.length
    return address(sub_ab01c303[arg1].field_0)
}

function sub_d30cda85(?) {
    return sub_d30cda85
}

function poolTotalAmount() {
    return poolTotalAmount
}

function sub_f37f2107(?) {
    return sub_f37f2107
}

function sub_f443e231(?) {
    return sub_f443e231
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    selfdestruct(owner)
}

function sub_9bcd7865(?) {
    return stor30, stor31, stor32, stor33, bool(stor34)
}

function sub_efc3f2a0(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return stor15[arg1], stor16[arg1], stor17[arg1], stor18[arg1], bool(stor19[arg1])
}

function sub_8b142914(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    sub_0fc922d1Address = arg1
}

function sub_a27a7bb9(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    stor15.length = arg1
    stor20 = arg2
    stor25 = arg3
}

function sub_a805053b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    validAmount = arg1
    require ext_code.size(sub_0fc922d1Address)
    call sub_0fc922d1Address.0xd487c326 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d487c326(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    validAmount = arg1
}

function sub_919b6c14(?) {
    require calldata.size - 4 >= 32
    if not poolTotalAmount:
        return 0
    if arg1 * poolTotalAmount / poolTotalAmount != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                    mem[205 len 23]
    return (arg1 * poolTotalAmount / 100)
}

function sub_ef9ca362(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    emit 0x382f3f10: poolTotalAmount, arg1
    if arg1 > poolTotalAmount:
        revert with 0, 'b should be small than a on sub'
    poolTotalAmount -= arg1
}

function sub_06180547(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    if arg2 > voters[address(arg1)].field_256:
        revert with 0, 'b should be small than a on sub'
    voters[address(arg1)].field_256 -= arg2
    if arg2 + voters[address(arg1)].field_512 < voters[address(arg1)].field_512:
        revert with 0, 'overflow on add'
    voters[address(arg1)].field_512 += arg2
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e7d7f950(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        if arg3:
            require ext_code.size(sub_0fc922d1Address)
            call sub_0fc922d1Address.0x6180547 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg2 > voters[address(arg1)].field_768:
                revert with 0, 'b should be small than a on sub'
            voters[address(arg1)].field_768 -= arg2
            if arg2 + voters[address(arg1)].field_1024 < voters[address(arg1)].field_1024:
                revert with 0, 'overflow on add'
            voters[address(arg1)].field_1024 += arg2
    emit 0x380c75f6: address(arg1), arg2, bool(ext_call.success), arg3
}

function sub_e1c2c15e(?) {
    sub_ab01c303.length = 0
    idx = 0
    while sub_ab01c303.length > idx:
        sub_ab01c303[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_56b16162.length:
        mem[0] = address(sub_56b16162[idx])
        mem[32] = 2
        if voters[address(stor4[idx])].field_0 >= validAmount:
            require idx < sub_56b16162.length
            sub_ab01c303.length++
            mem[0] = 5
            address(sub_ab01c303[sub_ab01c303.length].field_0) = address(sub_56b16162[idx])
        idx = idx + 1
        continue 
    if not sub_ab01c303.length:
        mem[(32 * sub_ab01c303.length) + 128] = 32
        mem[(32 * sub_ab01c303.length) + 160] = sub_ab01c303.length
        mem[(32 * sub_ab01c303.length) + 192 len floor32(sub_ab01c303.length)] = mem[128 len floor32(sub_ab01c303.length)]
        return memory
          from (32 * sub_ab01c303.length) + 128
           len (96 * sub_ab01c303.length) + 64
    mem[128] = address(sub_ab01c303.field_0)
    idx = 128
    s = 0
    while (32 * sub_ab01c303.length) + 96 > idx:
        mem[idx + 32] = address(sub_ab01c303[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_ab01c303.length) + 192 len floor32(sub_ab01c303.length)] = mem[128 len floor32(sub_ab01c303.length)]
    return Array(len=sub_ab01c303.length, data=mem[128 len floor32(sub_ab01c303.length)], mem[(32 * sub_ab01c303.length) + floor32(sub_ab01c303.length) + 192 len (32 * sub_ab01c303.length) - floor32(sub_ab01c303.length)]), 
}

function sub_7103e852(?) {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    mem[96 len 128] = call.data[4 len 128]
    mem[64] = 352
    mem[224 len 128] = call.data[132 len 128]
    mem[352] = 0
    if call.data[164] + call.data[132] < call.data[132]:
        revert with 0, 'overflow on add'
    if call.data[196] < 0:
        revert with 0, 'overflow on add'
    if call.data[228] < 0:
        revert with 0, 'overflow on add'
    if call.data[228] + call.data[196] + call.data[164] + call.data[132] != 30:
        revert with 0, 32, 37, 0xfe73756d206f66207368617265686f6c64657273206665652073686f756c64206265203330, mem[457 len 27]
    idx = 0
    while idx < 4:
        sub_614cb988.length++
        mem[0] = 6
        sub_614cb988[sub_614cb988.length] = mem[(32 * idx) + 108 len 20]
        _32 = mem[64]
        mem[64] = mem[64] + 96
        mem[_32] = mem[(32 * idx) + 224]
        mem[_32 + 32] = 0
        mem[_32 + 64] = 0
        mem[0] = mem[(32 * idx) + 108 len 20]
        mem[32] = 3
        shareholders[mem[(32 * idx) + 108 len 20]].field_0 = mem[_32]
        shareholders[mem[(32 * idx) + 108 len 20]].field_256 = 0
        shareholders[mem[(32 * idx) + 108 len 20]].field_512 = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_0fc922d1Address)
    call sub_0fc922d1Address.0x44ed318 with:
         gas gas_remaining wei
        args call.data[4 len 128], call.data[132 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if block.timestamp < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73766f74652074696d65206d757374206265747765656e20323031392d352d3120616e6420323031392d30352d33,
                    mem[210 len 18]
    if block.timestamp > 1558698245:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73766f74652074696d65206d757374206265747765656e20323031392d352d3120616e6420323031392d30352d33,
                    mem[210 len 18]
    emit voted(msg.sender, msg.value);
    if msg.value + sub_f443e231 < sub_f443e231:
        revert with 0, 'overflow on add'
    sub_f443e231 += msg.value
    if not msg.value:
        if poolTotalAmount < poolTotalAmount:
            revert with 0, 'overflow on add'
    else:
        if 70 * msg.value / msg.value != 70:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                        mem[205 len 23]
        if (70 * msg.value / 100) + poolTotalAmount < poolTotalAmount:
            revert with 0, 'overflow on add'
        poolTotalAmount += 70 * msg.value / 100
    voters[msg.sender].field_0 += msg.value
    if 256 < sub_56b16162.length:
        revert with 0, 'source length is larger than 256'
    idx = 0
    while uint8(idx) < sub_56b16162.length:
        mem[0] = 4
        if address(sub_56b16162[uint8(idx)]) != msg.sender:
            idx = idx + 1
            continue 
        if voters[msg.sender].field_0 > voters[address(stor7)].field_0:
            uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
    sub_56b16162.length++
    uint256(sub_56b16162[sub_56b16162.length]) = msg.sender or Mask(96, 160, uint256(sub_56b16162[sub_56b16162.length]))
    if voters[msg.sender].field_0 > voters[address(stor7)].field_0:
        uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
}

function sub_044ed318(?) {
    require calldata.size - 4 >= 256
    mem[96 len 128] = call.data[4 len 128]
    mem[64] = 352
    mem[224 len 128] = call.data[132 len 128]
    mem[352] = 0
    if msg.sender == owner:
        if call.data[164] + call.data[132] < call.data[132]:
            revert with 0, 'overflow on add'
        if call.data[196] < 0:
            revert with 0, 'overflow on add'
        if call.data[228] < 0:
            revert with 0, 'overflow on add'
        if call.data[228] + call.data[196] + call.data[164] + call.data[132] != 30:
            revert with 0, 32, 37, 0xfe73756d206f66207368617265686f6c64657273206665652073686f756c64206265203330, mem[457 len 27]
        idx = 0
        while idx < 4:
            sub_614cb988.length++
            mem[0] = 6
            sub_614cb988[sub_614cb988.length] = mem[(32 * idx) + 108 len 20]
            _49 = mem[64]
            mem[64] = mem[64] + 96
            mem[_49] = mem[(32 * idx) + 224]
            mem[_49 + 32] = 0
            mem[_49 + 64] = 0
            mem[0] = mem[(32 * idx) + 108 len 20]
            mem[32] = 3
            shareholders[mem[(32 * idx) + 108 len 20]].field_0 = mem[_49]
            shareholders[mem[(32 * idx) + 108 len 20]].field_256 = 0
            shareholders[mem[(32 * idx) + 108 len 20]].field_512 = 0
            idx = idx + 1
            continue 
    else:
        if sub_0fc922d1Address != msg.sender:
            revert with 0, 32, 42, 0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75, mem[462 len 22]
        if call.data[164] + call.data[132] < call.data[132]:
            revert with 0, 'overflow on add'
        if call.data[196] < 0:
            revert with 0, 'overflow on add'
        if call.data[228] < 0:
            revert with 0, 'overflow on add'
        if call.data[228] + call.data[196] + call.data[164] + call.data[132] != 30:
            revert with 0, 32, 37, 0xfe73756d206f66207368617265686f6c64657273206665652073686f756c64206265203330, mem[457 len 27]
        idx = 0
        while idx < 4:
            sub_614cb988.length++
            mem[0] = 6
            sub_614cb988[sub_614cb988.length] = mem[(32 * idx) + 108 len 20]
            _52 = mem[64]
            mem[64] = mem[64] + 96
            mem[_52] = mem[(32 * idx) + 224]
            mem[_52 + 32] = 0
            mem[_52 + 64] = 0
            mem[0] = mem[(32 * idx) + 108 len 20]
            mem[32] = 3
            shareholders[mem[(32 * idx) + 108 len 20]].field_0 = mem[_52]
            shareholders[mem[(32 * idx) + 108 len 20]].field_256 = 0
            shareholders[mem[(32 * idx) + 108 len 20]].field_512 = 0
            idx = idx + 1
            continue 
}

function sub_d2c7cb23(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    if arg1:
        idx = sub_47c8eb0b
        while idx < sub_47c8eb0b + 5:
            require idx < sub_56b16162.length
            mem[0] = address(sub_56b16162[idx])
            mem[32] = 2
            if arg1:
                mem[mem[64]] = 0xe7d7f95000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(sub_56b16162[idx])
                mem[mem[64] + 36] = voters[address(stor4[idx])].field_256
                mem[mem[64] + 68] = arg1
                require ext_code.size(sub_0fc922d1Address)
                call sub_0fc922d1Address.0xe7d7f950 with:
                     gas gas_remaining wei
                    args address(sub_56b16162[idx]), voters[address(stor4[idx])].field_256, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if owner != msg.sender:
                    if sub_0fc922d1Address != msg.sender:
                        revert with 0, 
                                    32,
                                    42,
                                    0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                    mem[mem[64] + 110 len 22]
                call address(sub_56b16162[idx]) with:
                   value voters[address(stor4[idx])].field_768 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if arg1:
                        require ext_code.size(sub_0fc922d1Address)
                        call sub_0fc922d1Address.0x6180547 with:
                             gas gas_remaining wei
                            args address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if voters[address(stor4[idx])].field_768 > voters[address(stor4[idx])].field_768:
                            revert with 0, 'b should be small than a on sub'
                        voters[address(stor4[idx])].field_768 -= voters[address(stor4[idx])].field_768
                        if voters[address(stor4[idx])].field_768 + voters[address(stor4[idx])].field_1024 < voters[address(stor4[idx])].field_1024:
                            revert with 0, 'overflow on add'
                        mem[0] = address(sub_56b16162[idx])
                        mem[32] = 2
                        voters[address(stor4[idx])].field_1024 += voters[address(stor4[idx])].field_768
                mem[mem[64]] = address(sub_56b16162[idx])
                mem[mem[64] + 32] = voters[address(stor4[idx])].field_768
                mem[mem[64] + 64] = bool(ext_call.success)
                mem[mem[64] + 96] = arg1
                emit 0x380c75f6: address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768, bool(ext_call.success), arg1
            if idx != sub_56b16162.length - 1:
                idx = idx + 1
                continue 
            if not arg1:
                sub_d30cda85 = 0
            else:
                sub_47c8eb0b = 0
                sub_2dbcc7fe++
    else:
        idx = sub_d30cda85
        while idx < sub_d30cda85 + 5:
            require idx < sub_56b16162.length
            mem[0] = address(sub_56b16162[idx])
            mem[32] = 2
            if arg1:
                mem[mem[64]] = 0xe7d7f95000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(sub_56b16162[idx])
                mem[mem[64] + 36] = voters[address(stor4[idx])].field_256
                mem[mem[64] + 68] = arg1
                require ext_code.size(sub_0fc922d1Address)
                call sub_0fc922d1Address.0xe7d7f950 with:
                     gas gas_remaining wei
                    args address(sub_56b16162[idx]), voters[address(stor4[idx])].field_256, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if owner != msg.sender:
                    if sub_0fc922d1Address != msg.sender:
                        revert with 0, 
                                    32,
                                    42,
                                    0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                    mem[mem[64] + 110 len 22]
                call address(sub_56b16162[idx]) with:
                   value voters[address(stor4[idx])].field_768 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if arg1:
                        require ext_code.size(sub_0fc922d1Address)
                        call sub_0fc922d1Address.0x6180547 with:
                             gas gas_remaining wei
                            args address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if voters[address(stor4[idx])].field_768 > voters[address(stor4[idx])].field_768:
                            revert with 0, 'b should be small than a on sub'
                        voters[address(stor4[idx])].field_768 -= voters[address(stor4[idx])].field_768
                        if voters[address(stor4[idx])].field_768 + voters[address(stor4[idx])].field_1024 < voters[address(stor4[idx])].field_1024:
                            revert with 0, 'overflow on add'
                        mem[0] = address(sub_56b16162[idx])
                        mem[32] = 2
                        voters[address(stor4[idx])].field_1024 += voters[address(stor4[idx])].field_768
                mem[mem[64]] = address(sub_56b16162[idx])
                mem[mem[64] + 32] = voters[address(stor4[idx])].field_768
                mem[mem[64] + 64] = bool(ext_call.success)
                mem[mem[64] + 96] = arg1
                emit 0x380c75f6: address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768, bool(ext_call.success), arg1
            if idx != sub_56b16162.length - 1:
                idx = idx + 1
                continue 
            if not arg1:
                sub_d30cda85 = 0
            else:
                sub_47c8eb0b = 0
                sub_2dbcc7fe++
    if not arg1:
        if sub_d30cda85 + 5 < sub_d30cda85:
            revert with 0, 'overflow on add'
        sub_d30cda85 += 5
    else:
        if sub_47c8eb0b + 5 < sub_47c8eb0b:
            revert with 0, 'overflow on add'
        sub_47c8eb0b += 5
}

function sub_ef4dd10a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    if arg1:
        if owner != msg.sender:
            if sub_0fc922d1Address != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                            mem[206 len 22]
        idx = sub_47c8eb0b
        while idx < sub_47c8eb0b + 5:
            require idx < sub_56b16162.length
            mem[0] = address(sub_56b16162[idx])
            mem[32] = 2
            mem[96] = 0xe7d7f95000000000000000000000000000000000000000000000000000000000
            mem[100] = address(sub_56b16162[idx])
            mem[132] = voters[address(stor4[idx])].field_256
            mem[164] = 1
            require ext_code.size(sub_0fc922d1Address)
            call sub_0fc922d1Address.0xe7d7f950 with:
                 gas gas_remaining wei
                args address(sub_56b16162[idx]), voters[address(stor4[idx])].field_256, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx != sub_56b16162.length - 1:
                idx = idx + 1
                continue 
            sub_47c8eb0b = 0
            sub_2dbcc7fe++
            if not arg2:
                return not bool(sub_47c8eb0b), 1
            if owner != msg.sender:
                if sub_0fc922d1Address != msg.sender:
                    revert with 0, 32, 42, 0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75, mem[206 len 22]
            idx = sub_d30cda85
            while idx < sub_d30cda85 + 5:
                require idx < sub_56b16162.length
                mem[0] = address(sub_56b16162[idx])
                mem[32] = 2
                if owner != msg.sender:
                    if sub_0fc922d1Address != msg.sender:
                        revert with 0, 
                                    32,
                                    42,
                                    0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                    mem[mem[64] + 110 len 22]
                call address(sub_56b16162[idx]) with:
                   value voters[address(stor4[idx])].field_768 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if voters[address(stor4[idx])].field_768 > voters[address(stor4[idx])].field_768:
                        revert with 0, 'b should be small than a on sub'
                    voters[address(stor4[idx])].field_768 -= voters[address(stor4[idx])].field_768
                    if voters[address(stor4[idx])].field_768 + voters[address(stor4[idx])].field_1024 < voters[address(stor4[idx])].field_1024:
                        revert with 0, 'overflow on add'
                    mem[0] = address(sub_56b16162[idx])
                    mem[32] = 2
                    voters[address(stor4[idx])].field_1024 += voters[address(stor4[idx])].field_768
                mem[mem[64]] = address(sub_56b16162[idx])
                mem[mem[64] + 32] = voters[address(stor4[idx])].field_768
                mem[mem[64] + 64] = bool(ext_call.success)
                mem[mem[64] + 96] = 0
                emit 0x380c75f6: address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768, bool(ext_call.success), 0
                if idx != sub_56b16162.length - 1:
                    idx = idx + 1
                    continue 
                sub_d30cda85 = 0
                return not bool(sub_47c8eb0b), not bool(sub_d30cda85)
            if sub_d30cda85 + 5 < sub_d30cda85:
                revert with 0, 'overflow on add'
            sub_d30cda85 += 5
            return not bool(sub_47c8eb0b), not bool(sub_d30cda85)
        if sub_47c8eb0b + 5 < sub_47c8eb0b:
            revert with 0, 'overflow on add'
        sub_47c8eb0b += 5
        if not arg2:
            return not bool(sub_47c8eb0b), 1
        if owner != msg.sender:
            if sub_0fc922d1Address != msg.sender:
                revert with 0, 32, 42, 0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75, mem[206 len 22]
        idx = sub_d30cda85
        while idx < sub_d30cda85 + 5:
            require idx < sub_56b16162.length
            mem[0] = address(sub_56b16162[idx])
            mem[32] = 2
            if owner != msg.sender:
                if sub_0fc922d1Address != msg.sender:
                    revert with 0, 
                                32,
                                42,
                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                mem[mem[64] + 110 len 22]
            call address(sub_56b16162[idx]) with:
               value voters[address(stor4[idx])].field_768 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                if voters[address(stor4[idx])].field_768 > voters[address(stor4[idx])].field_768:
                    revert with 0, 'b should be small than a on sub'
                voters[address(stor4[idx])].field_768 -= voters[address(stor4[idx])].field_768
                if voters[address(stor4[idx])].field_768 + voters[address(stor4[idx])].field_1024 < voters[address(stor4[idx])].field_1024:
                    revert with 0, 'overflow on add'
                mem[0] = address(sub_56b16162[idx])
                mem[32] = 2
                voters[address(stor4[idx])].field_1024 += voters[address(stor4[idx])].field_768
            mem[mem[64]] = address(sub_56b16162[idx])
            mem[mem[64] + 32] = voters[address(stor4[idx])].field_768
            mem[mem[64] + 64] = bool(ext_call.success)
            mem[mem[64] + 96] = 0
            emit 0x380c75f6: address(sub_56b16162[idx]), voters[address(stor4[idx])].field_768, bool(ext_call.success), 0
            if idx != sub_56b16162.length - 1:
                idx = idx + 1
                continue 
            sub_d30cda85 = 0
            return not bool(sub_47c8eb0b), not bool(sub_d30cda85)
        if sub_d30cda85 + 5 < sub_d30cda85:
            revert with 0, 'overflow on add'
        sub_d30cda85 += 5
        return not bool(sub_47c8eb0b), not bool(sub_d30cda85)
    require ext_code.size(sub_0fc922d1Address)
    call sub_0fc922d1Address.0xd2c7cb23 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0fc922d1Address)
    staticcall sub_0fc922d1Address.0x47c8eb0b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        return not bool(ext_call.return_data[0]), 1
    require ext_code.size(sub_0fc922d1Address)
    call sub_0fc922d1Address.0xd2c7cb23 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0fc922d1Address)
    staticcall sub_0fc922d1Address.0xd30cda85 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0]), not bool(ext_call.return_data[0])
}

function sub_777ac55b(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'eonly owner could access'
    if not sub_f443e231:
        if sub_f37f2107 > 0:
            revert with 0, 'b should be small than a on sub'
        idx = 0
        while idx < sub_614cb988.length:
            if not shareholders[stor6[idx]].field_0:
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    if shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                if shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], 0, bool(ext_call.success)
                if sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
            else:
                if -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / shareholders[stor6[idx]].field_0 != -sub_f37f2107:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[mem[64] + 109 len 23]
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                   value -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                    shareholders[stor6[idx]].field_512 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                shareholders[stor6[idx]].field_256 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30, bool(ext_call.success)
                if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
                sub_f37f2107 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
            idx = idx + 1
            continue 
    else:
        if 30 * sub_f443e231 / sub_f443e231 != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                        mem[205 len 23]
        if sub_f37f2107 > 30 * sub_f443e231 / 100:
            revert with 0, 'b should be small than a on sub'
        idx = 0
        while idx < sub_614cb988.length:
            if not shareholders[stor6[idx]].field_0:
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    if shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                if shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], 0, bool(ext_call.success)
                if sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
            else:
                if (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / shareholders[stor6[idx]].field_0 != (30 * sub_f443e231 / 100) - sub_f37f2107:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[mem[64] + 109 len 23]
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                   value (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                    shareholders[stor6[idx]].field_512 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                shareholders[stor6[idx]].field_256 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30, bool(ext_call.success)
                if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
                sub_f37f2107 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
            idx = idx + 1
            continue 
    require ext_code.size(sub_0fc922d1Address)
    call sub_0fc922d1Address.0xc13f8c90 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c13f8c90(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        if sub_0fc922d1Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[206 len 22]
    if not sub_f443e231:
        if sub_f37f2107 > 0:
            revert with 0, 'b should be small than a on sub'
        idx = 0
        while idx < sub_614cb988.length:
            if not shareholders[stor6[idx]].field_0:
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    if shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                if shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], 0, bool(ext_call.success)
                if sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
            else:
                if -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / shareholders[stor6[idx]].field_0 != -sub_f37f2107:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[mem[64] + 109 len 23]
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                   value -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                    shareholders[stor6[idx]].field_512 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                shareholders[stor6[idx]].field_256 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30, bool(ext_call.success)
                if (-1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30) + sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
                sub_f37f2107 += -1 * sub_f37f2107 * shareholders[stor6[idx]].field_0 / 30
            idx = idx + 1
            continue 
    else:
        if 30 * sub_f443e231 / sub_f443e231 != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                        mem[205 len 23]
        if sub_f37f2107 > 30 * sub_f443e231 / 100:
            revert with 0, 'b should be small than a on sub'
        idx = 0
        while idx < sub_614cb988.length:
            if not shareholders[stor6[idx]].field_0:
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    if shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                if shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], 0, bool(ext_call.success)
                if sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
            else:
                if (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / shareholders[stor6[idx]].field_0 != (30 * sub_f443e231 / 100) - sub_f37f2107:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[mem[64] + 109 len 23]
                require idx < sub_614cb988.length
                if shareholders[stor6[idx]].field_0 <= 0:
                    revert with 0, 'shareholder address is invalid'
                call sub_614cb988[idx] with:
                   value (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + shareholders[stor6[idx]].field_512 < shareholders[stor6[idx]].field_512:
                        revert with 0, 'overflow on add'
                    shareholders[stor6[idx]].field_512 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + shareholders[stor6[idx]].field_256 < shareholders[stor6[idx]].field_256:
                    revert with 0, 'overflow on add'
                mem[0] = sub_614cb988[idx]
                mem[32] = 3
                shareholders[stor6[idx]].field_256 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                mem[mem[64]] = sub_614cb988[idx]
                mem[mem[64] + 32] = (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
                mem[mem[64] + 64] = bool(ext_call.success)
                emit 0x3ecf3cbb: sub_614cb988[idx], (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30, bool(ext_call.success)
                if ((30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30) + sub_f37f2107 < sub_f37f2107:
                    revert with 0, 'overflow on add'
                sub_f37f2107 += (30 * sub_f443e231 / 100 * shareholders[stor6[idx]].field_0) - (sub_f37f2107 * shareholders[stor6[idx]].field_0) / 30
            idx = idx + 1
            continue 
}

function sub_ade1e2b8(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if msg.sender == owner:
        if arg1:
            if not poolTotalAmount:
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if 0 / sub_f443e231:
                            if 0 / 0 / sub_f443e231:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg2.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            if 0 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                    require idx < arg2.length
                    if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                        revert with 0, 'overflow on add'
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    if owner != msg.sender:
                        if sub_0fc922d1Address != msg.sender:
                            revert with 0, 
                                        32,
                                        42,
                                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                        mem[(32 * arg2.length) + 238 len 22]
                    mem[(32 * arg2.length) + 128] = poolTotalAmount
                    mem[(32 * arg2.length) + 160] = 0
                    emit 0x382f3f10: poolTotalAmount, 0
                    if 0 > poolTotalAmount:
                        revert with 0, 'b should be small than a on sub'
                    idx = idx + 1
                    continue 
            else:
                if arg1 * poolTotalAmount / poolTotalAmount != arg1:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[(32 * arg2.length) + 237 len 23]
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _361 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg2.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = 0
                            emit 0x382f3f10: poolTotalAmount, 0
                            if 0 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                        else:
                            if arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 0 / sub_f443e231 != arg1 * poolTotalAmount / 100:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                            require idx < arg2.length
                            if (arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_768 += arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            emit 0x382f3f10: poolTotalAmount, arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            if arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                            poolTotalAmount -= arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg2.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg2.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = 0
                            emit 0x382f3f10: poolTotalAmount, 0
                            if 0 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                        else:
                            if arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != arg1 * poolTotalAmount / 100:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                            require idx < arg2.length
                            if (arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_768 += arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = arg1 * poolTotalAmount / 100 * 10^6 * stor[_361] / sub_f443e231 / 10^6
                            emit 0x382f3f10: poolTotalAmount, arg1 * poolTotalAmount / 100 * 10^6 * stor[_361] / sub_f443e231 / 10^6
                            if arg1 * poolTotalAmount / 100 * 10^6 * stor[_361] / sub_f443e231 / 10^6 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                            poolTotalAmount -= arg1 * poolTotalAmount / 100 * 10^6 * stor[_361] / sub_f443e231 / 10^6
                    idx = idx + 1
                    continue 
    else:
        if sub_0fc922d1Address != msg.sender:
            revert with 0, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[(32 * arg2.length) + 238 len 22]
        if arg1:
            if not poolTotalAmount:
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if 0 / sub_f443e231:
                            if 0 / 0 / sub_f443e231:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg2.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            if 0 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                    require idx < arg2.length
                    if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                        revert with 0, 'overflow on add'
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    if owner != msg.sender:
                        if sub_0fc922d1Address != msg.sender:
                            revert with 0, 
                                        32,
                                        42,
                                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                        mem[(32 * arg2.length) + 238 len 22]
                    mem[(32 * arg2.length) + 128] = poolTotalAmount
                    mem[(32 * arg2.length) + 160] = 0
                    emit 0x382f3f10: poolTotalAmount, 0
                    if 0 > poolTotalAmount:
                        revert with 0, 'b should be small than a on sub'
                    idx = idx + 1
                    continue 
            else:
                if arg1 * poolTotalAmount / poolTotalAmount != arg1:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[(32 * arg2.length) + 237 len 23]
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _365 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg2.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = 0
                            emit 0x382f3f10: poolTotalAmount, 0
                            if 0 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                        else:
                            if arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 0 / sub_f443e231 != arg1 * poolTotalAmount / 100:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                            require idx < arg2.length
                            if (arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_768 += arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            emit 0x382f3f10: poolTotalAmount, arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                            if arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                            poolTotalAmount -= arg1 * poolTotalAmount / 100 * 0 / sub_f443e231 / 10^6
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg2.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg2.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = 0
                            emit 0x382f3f10: poolTotalAmount, 0
                            if 0 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                        else:
                            if arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != arg1 * poolTotalAmount / 100:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg2.length) + 237 len 23]
                            require idx < arg2.length
                            if (arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_768 < voters[mem[(32 * idx) + 140 len 20]].field_768:
                                revert with 0, 'overflow on add'
                            require idx < arg2.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_768 += arg1 * poolTotalAmount / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6
                            if owner != msg.sender:
                                if sub_0fc922d1Address != msg.sender:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                                                mem[(32 * arg2.length) + 238 len 22]
                            mem[(32 * arg2.length) + 128] = poolTotalAmount
                            mem[(32 * arg2.length) + 160] = arg1 * poolTotalAmount / 100 * 10^6 * stor[_365] / sub_f443e231 / 10^6
                            emit 0x382f3f10: poolTotalAmount, arg1 * poolTotalAmount / 100 * 10^6 * stor[_365] / sub_f443e231 / 10^6
                            if arg1 * poolTotalAmount / 100 * 10^6 * stor[_365] / sub_f443e231 / 10^6 > poolTotalAmount:
                                revert with 0, 'b should be small than a on sub'
                            poolTotalAmount -= arg1 * poolTotalAmount / 100 * 10^6 * stor[_365] / sub_f443e231 / 10^6
                    idx = idx + 1
                    continue 
}

function sub_338a44e9(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if msg.sender == owner:
        if arg1:
            if not sub_0fc922d1Address:
                revert with 0, 
                            32,
                            43,
                            0x746865206f74686572207369646520636f6e74726163742073686f756c64206e6f7420626520656d707400,
                            mem[(32 * arg3.length) + 239 len 21]
            mem[(32 * arg3.length) + 132] = arg1
            require ext_code.size(sub_0fc922d1Address)
            staticcall sub_0fc922d1Address.0x919b6c14 with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'b should be small than a on sub'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _471 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg3.length
                            require idx < arg3.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = 0
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if ext_call.return_data[0] * 0 / sub_f443e231 / 0 / sub_f443e231 != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] == address(sub_08d2d246Address):
                                if ext_call.return_data[0] * 0 / sub_f443e231 / 10^6 < ext_call.return_data[0] * 0 / sub_f443e231 / 10^6:
                                    revert with 0, 'overflow on add'
                            require idx < arg3.length
                            if (ext_call.return_data[0] * 0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_256 += ext_call.return_data[0] * 0 / sub_f443e231 / 10^6
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = ext_call.return_data[0] * 0 / sub_f443e231 / 10^6
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * 0 / sub_f443e231 / 10^6)
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg3.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg3.length
                            require idx < arg3.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = 0
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] == address(sub_08d2d246Address):
                                if ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 < ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6:
                                    revert with 0, 'overflow on add'
                            require idx < arg3.length
                            if (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_256 += ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = ext_call.return_data[0] * 10^6 * stor[_471] / sub_f443e231 / 10^6
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * 10^6 * stor[_471] / sub_f443e231 / 10^6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[(32 * arg3.length) + 237 len 23]
                if arg2 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'b should be small than a on sub'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _469 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = 0
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if arg2 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += arg2 * ext_call.return_data[0] / 100
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg2 * ext_call.return_data[0] / 100
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args (arg2 * ext_call.return_data[0] / 100)
                        else:
                            if (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 0 / sub_f443e231 != ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 100):
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6)
                            else:
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) < (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6)
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6))
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg3.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = 0
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if arg2 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += arg2 * ext_call.return_data[0] / 100
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg2 * ext_call.return_data[0] / 100
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args (arg2 * ext_call.return_data[0] / 100)
                        else:
                            if (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 100):
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (ext_call.return_data[0] * 10^6 * stor[_469] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_469] / sub_f443e231) / 10^6
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((ext_call.return_data[0] * 10^6 * stor[_469] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_469] / sub_f443e231) / 10^6)
                            else:
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) < (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * stor[_469] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_469] / sub_f443e231) / 10^6)
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * stor[_469] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_469] / sub_f443e231) / 10^6))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        if sub_0fc922d1Address != msg.sender:
            revert with 0, 
                        32,
                        42,
                        0x796f6e6c7920737570706f727420636f6e74726163742063616e2073656e6420766f74657220626f6e75,
                        mem[(32 * arg3.length) + 238 len 22]
        if arg1:
            if not sub_0fc922d1Address:
                revert with 0, 
                            32,
                            43,
                            0x746865206f74686572207369646520636f6e74726163742073686f756c64206e6f7420626520656d707400,
                            mem[(32 * arg3.length) + 239 len 21]
            mem[(32 * arg3.length) + 132] = arg1
            require ext_code.size(sub_0fc922d1Address)
            staticcall sub_0fc922d1Address.0x919b6c14 with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'b should be small than a on sub'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _475 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg3.length
                            require idx < arg3.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = 0
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if ext_call.return_data[0] * 0 / sub_f443e231 / 0 / sub_f443e231 != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] == address(sub_08d2d246Address):
                                if ext_call.return_data[0] * 0 / sub_f443e231 / 10^6 < ext_call.return_data[0] * 0 / sub_f443e231 / 10^6:
                                    revert with 0, 'overflow on add'
                            require idx < arg3.length
                            if (ext_call.return_data[0] * 0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_256 += ext_call.return_data[0] * 0 / sub_f443e231 / 10^6
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = ext_call.return_data[0] * 0 / sub_f443e231 / 10^6
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * 0 / sub_f443e231 / 10^6)
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg3.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg3.length
                            require idx < arg3.length
                            if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = 0
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] == address(sub_08d2d246Address):
                                if ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6 < ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6:
                                    revert with 0, 'overflow on add'
                            require idx < arg3.length
                            if (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                revert with 0, 'overflow on add'
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 2
                            voters[mem[(32 * idx) + 140 len 20]].field_256 += ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 / 10^6
                            mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = ext_call.return_data[0] * 10^6 * stor[_475] / sub_f443e231 / 10^6
                            require ext_code.size(sub_0fc922d1Address)
                            call sub_0fc922d1Address.0xef9ca362 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * 10^6 * stor[_475] / sub_f443e231 / 10^6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 
                                32,
                                41,
                                0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                mem[(32 * arg3.length) + 237 len 23]
                if arg2 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                    revert with 0, 'b should be small than a on sub'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _473 = sha3(mem[(32 * idx) + 140 len 20], 2)
                    if not voters[mem[(32 * idx) + 140 len 20]].field_0:
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 0 / sub_f443e231:
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = 0
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if arg2 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += arg2 * ext_call.return_data[0] / 100
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg2 * ext_call.return_data[0] / 100
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args (arg2 * ext_call.return_data[0] / 100)
                        else:
                            if (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 0 / sub_f443e231 != ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 100):
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6)
                            else:
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) < (ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6)
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 0 / sub_f443e231) / 10^6))
                    else:
                        if 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / voters[mem[(32 * idx) + 140 len 20]].field_0 != 10^6:
                            revert with 0, 
                                        32,
                                        41,
                                        0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                        mem[(32 * arg3.length) + 237 len 23]
                        if sub_f443e231 <= 0:
                            revert with 0, 'b should large than 0 on div'
                        require sub_f443e231
                        if not 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231:
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = 0
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if arg2 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += arg2 * ext_call.return_data[0] / 100
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg2 * ext_call.return_data[0] / 100
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args (arg2 * ext_call.return_data[0] / 100)
                        else:
                            if (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231 != ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 100):
                                revert with 0, 
                                            32,
                                            41,
                                            0x256d756c20726573756c74206973206e6f7420657175616c206f6e20736166656d6174682063686563,
                                            mem[(32 * arg3.length) + 237 len 23]
                            require idx < arg3.length
                            if mem[(32 * idx) + 140 len 20] != address(sub_08d2d246Address):
                                require idx < arg3.length
                                if ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 += (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (ext_call.return_data[0] * 10^6 * stor[_473] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_473] / sub_f443e231) / 10^6
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((ext_call.return_data[0] * 10^6 * stor[_473] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_473] / sub_f443e231) / 10^6)
                            else:
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) < (ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                if (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256 < voters[mem[(32 * idx) + 140 len 20]].field_256:
                                    revert with 0, 'overflow on add'
                                require idx < arg3.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 2
                                voters[mem[(32 * idx) + 140 len 20]].field_256 = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * voters[mem[(32 * idx) + 140 len 20]].field_0 / sub_f443e231) / 10^6) + voters[mem[(32 * idx) + 140 len 20]].field_256
                                mem[(32 * arg3.length) + 128] = 0xef9ca36200000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = (arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * stor[_473] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_473] / sub_f443e231) / 10^6)
                                require ext_code.size(sub_0fc922d1Address)
                                call sub_0fc922d1Address.0xef9ca362 with:
                                     gas gas_remaining wei
                                    args ((arg2 * ext_call.return_data[0] / 100) + ((ext_call.return_data[0] * 10^6 * stor[_473] / sub_f443e231) - (arg2 * ext_call.return_data[0] / 100 * 10^6 * stor[_473] / sub_f443e231) / 10^6))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}



}
