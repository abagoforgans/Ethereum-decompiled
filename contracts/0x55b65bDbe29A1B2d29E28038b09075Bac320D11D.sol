contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 sub_654dca74;
mapping of uint256 sub_578c3585;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 sub_8f85fa5d;
uint256 stor6;
address sub_a4baf750Address;
uint256 sub_9fbcefea;
uint8 sub_b6df6db9;
uint8 sub_f16d8455; offset 8
uint256 sub_3e4fb073;

function sub_3e4fb073(?) {
    return sub_3e4fb073
}

function sub_578c3585(?) {
    return sub_578c3585[arg1]
}

function sub_654dca74(?) {
    return sub_654dca74[arg1]
}

function sub_8f85fa5d(?) {
    return sub_8f85fa5d[arg1]
}

function sub_9fbcefea(?) {
    return sub_9fbcefea
}

function sub_a4baf750(?) {
    return sub_a4baf750Address
}

function sub_b6df6db9(?) {
    return sub_b6df6db9
}

function sub_f16d8455(?) {
    return sub_f16d8455
}

function closeGame() {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    if 438280 * 3600 >= block.timestamp:
        revert with 0, 'Time has not arrived'
    if sub_a4baf750Address != msg.sender:
        revert with 0, 'Error'
    selfdestruct(sub_a4baf750Address)
}

function _fallback() payable {
    revert
}

function sub_93057b90(?) {
    require sub_8f85fa5d[msg.sender] > 0
    require stor0[stor5[msg.sender]].field_0 > 0
    return sub_8f85fa5d[msg.sender], stor0[stor5[msg.sender]].field_256, stor0[stor2[stor5[msg.sender]]].field_256
}

function player_(uint256 arg1) {
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280
}

function sub_116f8143(?) {
    if sub_654dca74[msg.sender] <= 0:
        return stor0[arg1].field_0, stor0[arg1].field_256, stor0[stor2[arg1]].field_256
    if sub_578c3585[stor1[msg.sender]] <= 0:
        return stor0[arg1].field_0, stor0[arg1].field_256, stor0[stor2[arg1]].field_256
    return stor0[stor2[stor1[msg.sender]]].field_0, 
           stor0[stor2[stor1[msg.sender]]].field_256,
           stor0[stor2[stor2[stor1[msg.sender]]]].field_256
}

function sub_167203ef(?) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    require msg.sender == sub_a4baf750Address
    if arg2:
        require stor3[address(arg1)] < stor4.length
        stor4[stor3[address(arg1)]].field_0 = 0
        stor3[address(arg1)] = 0
    else:
        if not stor3[address(arg1)]:
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor3[address(arg1)] = stor4.length
}

function withdraw(uint256 arg1) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    if arg1 != sub_654dca74[msg.sender]:
        revert with 0, 'Error Action'
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'Error Action'
    if stor0[arg1].field_512 < sub_9fbcefea:
        revert with 0, 'Insufficient balance'
    stor0[arg1].field_512 = 0
    call stor0[arg1].field_256 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_97cb6338(?) {
    if ext_code.size(msg.sender) <= 0:
        revert with 0, 'Sender not authorized!'
    if stor3[address(msg.sender)] <= 0:
        revert with 0, 'ERROR'
    require arg2
    if arg1 <= 0:
        revert with 0, 'Error1'
    if not arg3:
        revert with 0, 'Error1'
    if stor0[arg1].field_256 != arg3:
        revert with 0, 'Error1'
    if arg3 == arg2:
        revert with 0, 'Error4'
    if arg4 == arg2:
        revert with 0, 'Error4'
    if stor0[stor2[arg1]].field_256 != arg4:
        revert with 0, 'Error2'
    if sub_8f85fa5d[address(arg2)] <= 0:
        sub_8f85fa5d[address(arg2)] = arg1
    else:
        require arg1 == sub_8f85fa5d[address(arg2)]
}

function sub_695dea99(?) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    require msg.sender == sub_a4baf750Address
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function addGame(uint256 arg1) payable {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    if sub_654dca74[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Everyone can only participate once'
    if arg1:
        if sub_9fbcefea != msg.value:
            revert with 0, 'Please pay the correct eth'
    else:
        if sub_3e4fb073 <= 0:
            if sub_9fbcefea != msg.value:
                revert with 0, 'Please pay the correct eth'
        else:
            sub_3e4fb073--
    if sub_654dca74[msg.sender]:
        revert with 0, 'Error Player'
    stor6++
    sub_654dca74[msg.sender] = stor6 + 1
    stor0[stor6 + 1].field_0 = stor6 + 1
    stor0[stor6 + 1].field_256 = msg.sender or Mask(96, 160, stor0[stor6 + 1].field_256)
    stor0[stor6 + 1].field_512 = 0
    stor0[stor6 + 1].field_1280 = block.timestamp
    if msg.value:
        if arg1 <= 0:
            require msg.value + stor0[stor1[stor7]].field_512 >= stor0[stor1[stor7]].field_512
            stor0[stor1[stor7]].field_512 += msg.value
        else:
            if arg1 == stor6 + 1:
                require msg.value + stor0[stor1[stor7]].field_512 >= stor0[stor1[stor7]].field_512
                stor0[stor1[stor7]].field_512 += msg.value
            else:
                if stor0[arg1].field_0 <= 0:
                    require msg.value + stor0[stor1[stor7]].field_512 >= stor0[stor1[stor7]].field_512
                    stor0[stor1[stor7]].field_512 += msg.value
                else:
                    require sub_b6df6db9 > 0
                    require sub_b6df6db9 <= 100
                    if sub_9fbcefea:
                        require sub_9fbcefea
                        require sub_b6df6db9 * sub_9fbcefea / sub_9fbcefea == sub_b6df6db9
                    stor0[arg1].field_768++
                    sub_578c3585[stor6 + 1] = stor0[arg1].field_0
                    stor0[arg1].field_512 += sub_b6df6db9 * sub_9fbcefea / 100
                    if sub_578c3585[arg1] <= 0:
                        require msg.value - (sub_b6df6db9 * sub_9fbcefea / 100) + stor0[stor1[stor7]].field_512 >= stor0[stor1[stor7]].field_512
                        stor0[stor1[stor7]].field_512 = msg.value - (sub_b6df6db9 * sub_9fbcefea / 100) + stor0[stor1[stor7]].field_512
                    else:
                        require sub_f16d8455 > 0
                        require sub_f16d8455 <= 100
                        if sub_9fbcefea:
                            require sub_9fbcefea
                            require sub_f16d8455 * sub_9fbcefea / sub_9fbcefea == sub_f16d8455
                        stor0[stor2[arg1]].field_1024++
                        stor0[stor2[arg1]].field_512 += sub_f16d8455 * sub_9fbcefea / 100
                        require msg.value - (sub_b6df6db9 * sub_9fbcefea / 100) - (sub_f16d8455 * sub_9fbcefea / 100) + stor0[stor1[stor7]].field_512 >= stor0[stor1[stor7]].field_512
                        stor0[stor1[stor7]].field_512 = msg.value - (sub_b6df6db9 * sub_9fbcefea / 100) - (sub_f16d8455 * sub_9fbcefea / 100) + stor0[stor1[stor7]].field_512
}



}
