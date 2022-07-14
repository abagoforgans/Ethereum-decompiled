contract main {




// =====================  Runtime code  =====================


const name = 'Six Degress Unlimited'

const symbol = ''


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
mapping of struct plyr_;
array of uint256 sub_8338d556;
mapping of struct sub_e5b3f6f2;
array of struct stor11;
mapping of uint256 sub_cc5c8117;
mapping of uint256 sub_d705f265;

function sub_8338d556(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_8338d556[arg1]
    return sub_8338d556[arg1][arg2]
}

function sub_cc5c8117(?) {
    require calldata.size - 4 >= 32
    return sub_cc5c8117[arg1]
}

function activated_() {
    return bool(stor5)
}

function sub_d705f265(?) {
    require calldata.size - 4 >= 32
    return sub_d705f265[arg1]
}

function plyr_(uint256 arg1) {
    require calldata.size - 4 >= 32
    return plyr_[arg1].field_0, plyr_[arg1].field_256, plyr_[arg1].field_512, plyr_[arg1].field_512, plyr_[arg1].field_768
}

function sub_e5b3f6f2(?) {
    require calldata.size - 4 >= 32
    return sub_e5b3f6f2[arg1].field_0, sub_e5b3f6f2[arg1].field_256
}

function sub_89f5e47d(?) {
    return stor0, stor1, stor2
}

function _fallback() payable {
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
}

function sub_da47f03d(?) {
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    sub_d705f265[msg.sender] = 0
}

function sub_4063bb7a(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    stor7 = arg1
}

function sub_0654d097(?) {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    sub_d705f265[address(arg1)] = arg2
}

function sub_b9bbc5db(?) {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    sub_cc5c8117[address(arg1)] = arg2
}

function activate() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if stor5:
        revert with 0, 'Six Degrees already activated'
    stor5 = 1
}

function pause() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if bool(stor5) != 1:
        revert with 0, 'Six Degrees is paused'
    stor5 = 0
}

function sub_a840f10b(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
    staticcall 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if arg1 > eth.balance(this.address):
        revert with 0, 'sorry out amount'
    if arg1 + stor2 < stor2:
        revert with 0, 'SafeMath add failed'
    stor2 += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithDraw(arg1, block.timestamp, msg.sender);
}

function withDraw() {
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 < sub_e5b3f6f2[msg.sender].field_0:
        revert with 0, 'SafeMath add failed'
    if sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 > eth.balance(this.address):
        revert with 0, 'sorry out amount'
    if sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 < stor7:
        revert with 0, 'sorry out amount'
    if sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0:
        sub_e5b3f6f2[msg.sender].field_0 = 0
        sub_e5b3f6f2[msg.sender].field_256 = 0
        if sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 + stor2 < stor2:
            revert with 0, 'SafeMath add failed'
        stor2 = sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 + stor2
        call msg.sender with:
           value sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithDraw(sub_e5b3f6f2[msg.sender].field_256 + sub_e5b3f6f2[msg.sender].field_0, block.timestamp, msg.sender);
}

function sub_92cf3791(?) {
    require calldata.size - 4 >= 32
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 != msg.sender:
        if not sub_d705f265[address(arg1)]:
            revert with 0, 'sorry pID is incorrect'
        if sub_d705f265[address(arg1)] != sub_cc5c8117[msg.sender]:
            revert with 0, 'sorry pID is incorrect'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 < sub_e5b3f6f2[address(arg1)].field_0:
        revert with 0, 'SafeMath add failed'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 > eth.balance(this.address):
        revert with 0, 'sorry amount error'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 < stor7:
        revert with 0, 'sorry amount error'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0:
        sub_e5b3f6f2[address(arg1)].field_0 = 0
        sub_e5b3f6f2[address(arg1)].field_256 = 0
        if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 + stor2 < stor2:
            revert with 0, 'SafeMath add failed'
        stor2 = sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 + stor2
        call arg1 with:
           value sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithDraw(sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0, block.timestamp, arg1);
}

function sub_ae4de348(?) payable {
    require calldata.size - 4 >= 96
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.sender == arg1:
        sub_d705f265[address(arg1)] = 1
        stor6++
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        if not plyr_[arg2].field_256:
            if not stor3[arg3 << 248]:
                if 0 >= msg.value:
                    revert with 0, 'sorry ether or rID is incorrect'
                if msg.value != 0:
                    revert with 0, 'sorry ether or rID is incorrect'
                plyr_[stor6].field_0 = plyr_[arg2].field_256
                plyr_[stor6].field_256 = stor6
                plyr_[stor6].field_512 = 0
                plyr_[stor6].field_520 = arg1
                plyr_[stor6].field_768 = 0
                plyr_[stor6].field_768 = 0
                sub_8338d556[address(arg1)]++
                sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                if stor0 < stor0:
                    revert with 0, 'SafeMath add failed'
            else:
                if 2 * stor3[arg3 << 248] / stor3[arg3 << 248] != 2:
                    revert with 0, 'SafeMath mul failed'
                if 0 >= msg.value:
                    revert with 0, 'sorry ether or rID is incorrect'
                if 2 * stor3[arg3 << 248] != msg.value:
                    revert with 0, 'sorry ether or rID is incorrect'
                plyr_[stor6].field_0 = plyr_[arg2].field_256
                plyr_[stor6].field_256 = stor6
                plyr_[stor6].field_512 = 0
                plyr_[stor6].field_520 = arg1
                plyr_[stor6].field_768 = 0
                plyr_[stor6].field_768 = 0
                sub_8338d556[address(arg1)]++
                sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                if (2 * stor3[arg3 << 248]) + stor0 < stor0:
                    revert with 0, 'SafeMath add failed'
                stor0 += 2 * stor3[arg3 << 248]
            stor1++
            if not stor3[arg3 << 248] / 100:
                require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                     gas gas_remaining wei
            else:
                if 23 * stor3[arg3 << 248] / 100 / stor3[arg3 << 248] / 100 != 23:
                    revert with 0, 'SafeMath mul failed'
                require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                   value 23 * stor3[arg3 << 248] / 100 wei
                     gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb632245f: arg3 << 248, block.timestamp, stor6, arg1
        else:
            mem[256 len 192] = code.data[7284 len 192]
            mem[64] = 640
            mem[448] = stor11[stor8[arg2].field_256].field_256
            mem[480] = stor11[stor8[arg2].field_256].field_512
            mem[512] = stor11[stor8[arg2].field_256].field_768
            mem[544] = stor11[stor8[arg2].field_256].field_1024
            mem[0] = plyr_[arg2].field_256
            mem[576] = stor11[stor8[arg2].field_256].field_1280
            mem[608] = plyr_[arg2].field_256
            idx = 0
            while uint8(idx) < 6:
                if mem[(32 * uint8(idx)) + 448]:
                    require uint8(idx) < 6
                    mem[0] = mem[(32 * uint8(idx)) + 448]
                    mem[32] = 8
                    if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 < 55986:
                        require uint8(idx) < 6
                        if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 + 1 < plyr_[mem[(32 * uint8(idx)) + 448]].field_768:
                            revert with 0, 'SafeMath add failed'
                        plyr_[mem[(32 * uint8(idx)) + 448]].field_768++
                        if (stor3[stor8[stor8[arg2].field_256].field_512] / 13) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0:
                            revert with 0, 'SafeMath add failed'
                        sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 += stor3[stor8[stor8[arg2].field_256].field_512] / 13
                        mem[0] = plyr_[mem[(32 * uint8(idx)) + 448]].field_768
                        mem[32] = 4
                        if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                            if not stor3[stor8[stor8[arg2].field_256].field_512]:
                                if sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                    revert with 0, 'SafeMath add failed'
                                _572 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                mem[0] = mem[(32 * uint8(idx)) + 448]
                                mem[32] = 8
                                mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                mem[mem[64] + 32] = stor3[_572]
                                mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                mem[mem[64] + 96] = block.timestamp
                                emit 0x72825d8b: mem[mem[64]], stor3[_572], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                            else:
                                if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512] / stor3[stor8[stor8[arg2].field_256].field_512] != stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                    revert with 0, 'SafeMath mul failed'
                                if (stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                    revert with 0, 'SafeMath add failed'
                                _594 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 += stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]
                                mem[0] = mem[(32 * uint8(idx)) + 448]
                                mem[32] = 8
                                mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                mem[mem[64] + 32] = stor3[_594]
                                mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                mem[mem[64] + 96] = block.timestamp
                                emit 0x72825d8b: mem[mem[64]], stor3[_594], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                idx = idx + 1
                continue 
            s = 0
            idx = 448
            while 640 > idx:
                stor11[stor6][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 6
            while 6 > idx:
                stor11[stor6][idx].field_0 = 0
                idx = idx + 1
                continue 
            if 0 >= msg.value:
                revert with 0, 'sorry ether or rID is incorrect'
            if stor3[stor8[stor8[arg2].field_256].field_512] != msg.value:
                revert with 0, 'sorry ether or rID is incorrect'
            plyr_[stor6].field_0 = plyr_[arg2].field_256
            plyr_[stor6].field_256 = stor6
            plyr_[stor6].field_512 = plyr_[plyr_[arg2].field_256].field_512
            plyr_[stor6].field_520 = arg1
            plyr_[stor6].field_768 = mem[224]
            sub_8338d556[address(arg1)]++
            sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
            if stor3[stor8[stor8[arg2].field_256].field_512] + stor0 < stor0:
                revert with 0, 'SafeMath add failed'
            stor0 += stor3[stor8[stor8[arg2].field_256].field_512]
            stor1++
            if not stor3[stor8[stor8[arg2].field_256].field_512] / 100:
                require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                     gas gas_remaining wei
            else:
                if 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 / stor3[stor8[stor8[arg2].field_256].field_512] / 100 != 23:
                    revert with 0, 'SafeMath mul failed'
                require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                   value 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 wei
                     gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb632245f: plyr_[plyr_[arg2].field_256].field_512, block.timestamp, stor6, arg1
    else:
        if sub_d705f265[address(arg1)]:
            stor6++
            mem[96] = 0
            mem[128] = 0
            mem[160] = 0
            mem[192] = 0
            mem[224] = 0
            if not plyr_[arg2].field_256:
                if not stor3[arg3 << 248]:
                    if 0 >= msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    if msg.value != 0:
                        revert with 0, 'sorry ether or rID is incorrect'
                    plyr_[stor6].field_0 = plyr_[arg2].field_256
                    plyr_[stor6].field_256 = stor6
                    plyr_[stor6].field_512 = 0
                    plyr_[stor6].field_520 = arg1
                    plyr_[stor6].field_768 = 0
                    plyr_[stor6].field_768 = 0
                    sub_8338d556[address(arg1)]++
                    sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                    if stor0 < stor0:
                        revert with 0, 'SafeMath add failed'
                else:
                    if 2 * stor3[arg3 << 248] / stor3[arg3 << 248] != 2:
                        revert with 0, 'SafeMath mul failed'
                    if 0 >= msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    if 2 * stor3[arg3 << 248] != msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    plyr_[stor6].field_0 = plyr_[arg2].field_256
                    plyr_[stor6].field_256 = stor6
                    plyr_[stor6].field_512 = 0
                    plyr_[stor6].field_520 = arg1
                    plyr_[stor6].field_768 = 0
                    plyr_[stor6].field_768 = 0
                    sub_8338d556[address(arg1)]++
                    sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                    if (2 * stor3[arg3 << 248]) + stor0 < stor0:
                        revert with 0, 'SafeMath add failed'
                    stor0 += 2 * stor3[arg3 << 248]
                stor1++
                if not stor3[arg3 << 248] / 100:
                    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                    call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                         gas gas_remaining wei
                else:
                    if 23 * stor3[arg3 << 248] / 100 / stor3[arg3 << 248] / 100 != 23:
                        revert with 0, 'SafeMath mul failed'
                    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                    call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                       value 23 * stor3[arg3 << 248] / 100 wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb632245f: arg3 << 248, block.timestamp, stor6, arg1
            else:
                mem[256 len 192] = code.data[7284 len 192]
                mem[64] = 640
                mem[448] = stor11[stor8[arg2].field_256].field_256
                mem[480] = stor11[stor8[arg2].field_256].field_512
                mem[512] = stor11[stor8[arg2].field_256].field_768
                mem[544] = stor11[stor8[arg2].field_256].field_1024
                mem[0] = plyr_[arg2].field_256
                mem[576] = stor11[stor8[arg2].field_256].field_1280
                mem[608] = plyr_[arg2].field_256
                idx = 0
                while uint8(idx) < 6:
                    if mem[(32 * uint8(idx)) + 448]:
                        require uint8(idx) < 6
                        mem[0] = mem[(32 * uint8(idx)) + 448]
                        mem[32] = 8
                        if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 < 55986:
                            require uint8(idx) < 6
                            if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 + 1 < plyr_[mem[(32 * uint8(idx)) + 448]].field_768:
                                revert with 0, 'SafeMath add failed'
                            plyr_[mem[(32 * uint8(idx)) + 448]].field_768++
                            if (stor3[stor8[stor8[arg2].field_256].field_512] / 13) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0:
                                revert with 0, 'SafeMath add failed'
                            sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 += stor3[stor8[stor8[arg2].field_256].field_512] / 13
                            mem[0] = plyr_[mem[(32 * uint8(idx)) + 448]].field_768
                            mem[32] = 4
                            if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                if not stor3[stor8[stor8[arg2].field_256].field_512]:
                                    if sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                        revert with 0, 'SafeMath add failed'
                                    _578 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                    mem[0] = mem[(32 * uint8(idx)) + 448]
                                    mem[32] = 8
                                    mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                    mem[mem[64] + 32] = stor3[_578]
                                    mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0x72825d8b: mem[mem[64]], stor3[_578], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                                else:
                                    if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512] / stor3[stor8[stor8[arg2].field_256].field_512] != stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                        revert with 0, 'SafeMath mul failed'
                                    if (stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                        revert with 0, 'SafeMath add failed'
                                    _598 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                    sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 += stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]
                                    mem[0] = mem[(32 * uint8(idx)) + 448]
                                    mem[32] = 8
                                    mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                    mem[mem[64] + 32] = stor3[_598]
                                    mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0x72825d8b: mem[mem[64]], stor3[_598], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                    idx = idx + 1
                    continue 
                s = 0
                idx = 448
                while 640 > idx:
                    stor11[stor6][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 6
                while 6 > idx:
                    stor11[stor6][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if 0 >= msg.value:
                    revert with 0, 'sorry ether or rID is incorrect'
                if stor3[stor8[stor8[arg2].field_256].field_512] != msg.value:
                    revert with 0, 'sorry ether or rID is incorrect'
                plyr_[stor6].field_0 = plyr_[arg2].field_256
                plyr_[stor6].field_256 = stor6
                plyr_[stor6].field_512 = plyr_[plyr_[arg2].field_256].field_512
                plyr_[stor6].field_520 = arg1
                plyr_[stor6].field_768 = mem[224]
                sub_8338d556[address(arg1)]++
                sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                if stor3[stor8[stor8[arg2].field_256].field_512] + stor0 < stor0:
                    revert with 0, 'SafeMath add failed'
                stor0 += stor3[stor8[stor8[arg2].field_256].field_512]
                stor1++
                if not stor3[stor8[stor8[arg2].field_256].field_512] / 100:
                    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                    call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                         gas gas_remaining wei
                else:
                    if 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 / stor3[stor8[stor8[arg2].field_256].field_512] / 100 != 23:
                        revert with 0, 'SafeMath mul failed'
                    require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                    call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                       value 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb632245f: plyr_[plyr_[arg2].field_256].field_512, block.timestamp, stor6, arg1
        else:
            if not sub_cc5c8117[msg.sender]:
                stor6++
                mem[96] = 0
                mem[128] = 0
                mem[160] = 0
                mem[192] = 0
                mem[224] = 0
                if not plyr_[arg2].field_256:
                    if not stor3[arg3 << 248]:
                        if 0 >= msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        if msg.value != 0:
                            revert with 0, 'sorry ether or rID is incorrect'
                        plyr_[stor6].field_0 = plyr_[arg2].field_256
                        plyr_[stor6].field_256 = stor6
                        plyr_[stor6].field_512 = 0
                        plyr_[stor6].field_520 = arg1
                        plyr_[stor6].field_768 = 0
                        plyr_[stor6].field_768 = 0
                        sub_8338d556[address(arg1)]++
                        sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                        if stor0 < stor0:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if 2 * stor3[arg3 << 248] / stor3[arg3 << 248] != 2:
                            revert with 0, 'SafeMath mul failed'
                        if 0 >= msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        if 2 * stor3[arg3 << 248] != msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        plyr_[stor6].field_0 = plyr_[arg2].field_256
                        plyr_[stor6].field_256 = stor6
                        plyr_[stor6].field_512 = 0
                        plyr_[stor6].field_520 = arg1
                        plyr_[stor6].field_768 = 0
                        plyr_[stor6].field_768 = 0
                        sub_8338d556[address(arg1)]++
                        sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                        if (2 * stor3[arg3 << 248]) + stor0 < stor0:
                            revert with 0, 'SafeMath add failed'
                        stor0 += 2 * stor3[arg3 << 248]
                    stor1++
                    if not stor3[arg3 << 248] / 100:
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                             gas gas_remaining wei
                    else:
                        if 23 * stor3[arg3 << 248] / 100 / stor3[arg3 << 248] / 100 != 23:
                            revert with 0, 'SafeMath mul failed'
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                           value 23 * stor3[arg3 << 248] / 100 wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb632245f: arg3 << 248, block.timestamp, stor6, arg1
                else:
                    mem[256 len 192] = code.data[7284 len 192]
                    mem[64] = 640
                    mem[448] = stor11[stor8[arg2].field_256].field_256
                    mem[480] = stor11[stor8[arg2].field_256].field_512
                    mem[512] = stor11[stor8[arg2].field_256].field_768
                    mem[544] = stor11[stor8[arg2].field_256].field_1024
                    mem[0] = plyr_[arg2].field_256
                    mem[576] = stor11[stor8[arg2].field_256].field_1280
                    mem[608] = plyr_[arg2].field_256
                    idx = 0
                    while uint8(idx) < 6:
                        if mem[(32 * uint8(idx)) + 448]:
                            require uint8(idx) < 6
                            mem[0] = mem[(32 * uint8(idx)) + 448]
                            mem[32] = 8
                            if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 < 55986:
                                require uint8(idx) < 6
                                if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 + 1 < plyr_[mem[(32 * uint8(idx)) + 448]].field_768:
                                    revert with 0, 'SafeMath add failed'
                                plyr_[mem[(32 * uint8(idx)) + 448]].field_768++
                                if (stor3[stor8[stor8[arg2].field_256].field_512] / 13) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0:
                                    revert with 0, 'SafeMath add failed'
                                sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 += stor3[stor8[stor8[arg2].field_256].field_512] / 13
                                mem[0] = plyr_[mem[(32 * uint8(idx)) + 448]].field_768
                                mem[32] = 4
                                if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                    if not stor3[stor8[stor8[arg2].field_256].field_512]:
                                        if sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                            revert with 0, 'SafeMath add failed'
                                        _584 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                        mem[0] = mem[(32 * uint8(idx)) + 448]
                                        mem[32] = 8
                                        mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                        mem[mem[64] + 32] = stor3[_584]
                                        mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                        mem[mem[64] + 96] = block.timestamp
                                        emit 0x72825d8b: mem[mem[64]], stor3[_584], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                                    else:
                                        if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512] / stor3[stor8[stor8[arg2].field_256].field_512] != stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                            revert with 0, 'SafeMath mul failed'
                                        if (stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                            revert with 0, 'SafeMath add failed'
                                        _602 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                        sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 += stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]
                                        mem[0] = mem[(32 * uint8(idx)) + 448]
                                        mem[32] = 8
                                        mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                        mem[mem[64] + 32] = stor3[_602]
                                        mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                        mem[mem[64] + 96] = block.timestamp
                                        emit 0x72825d8b: mem[mem[64]], stor3[_602], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                        idx = idx + 1
                        continue 
                    s = 0
                    idx = 448
                    while 640 > idx:
                        stor11[stor6][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 6
                    while 6 > idx:
                        stor11[stor6][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if 0 >= msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    if stor3[stor8[stor8[arg2].field_256].field_512] != msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    plyr_[stor6].field_0 = plyr_[arg2].field_256
                    plyr_[stor6].field_256 = stor6
                    plyr_[stor6].field_512 = plyr_[plyr_[arg2].field_256].field_512
                    plyr_[stor6].field_520 = arg1
                    plyr_[stor6].field_768 = mem[224]
                    sub_8338d556[address(arg1)]++
                    sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                    if stor3[stor8[stor8[arg2].field_256].field_512] + stor0 < stor0:
                        revert with 0, 'SafeMath add failed'
                    stor0 += stor3[stor8[stor8[arg2].field_256].field_512]
                    stor1++
                    if not stor3[stor8[stor8[arg2].field_256].field_512] / 100:
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                             gas gas_remaining wei
                    else:
                        if 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 / stor3[stor8[stor8[arg2].field_256].field_512] / 100 != 23:
                            revert with 0, 'SafeMath mul failed'
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                           value 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb632245f: plyr_[plyr_[arg2].field_256].field_512, block.timestamp, stor6, arg1
            else:
                sub_d705f265[address(arg1)] = sub_cc5c8117[msg.sender]
                stor6++
                mem[96] = 0
                mem[128] = 0
                mem[160] = 0
                mem[192] = 0
                mem[224] = 0
                if not plyr_[arg2].field_256:
                    if not stor3[arg3 << 248]:
                        if 0 >= msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        if msg.value != 0:
                            revert with 0, 'sorry ether or rID is incorrect'
                        plyr_[stor6].field_0 = plyr_[arg2].field_256
                        plyr_[stor6].field_256 = stor6
                        plyr_[stor6].field_512 = 0
                        plyr_[stor6].field_520 = arg1
                        plyr_[stor6].field_768 = 0
                        plyr_[stor6].field_768 = 0
                        sub_8338d556[address(arg1)]++
                        sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                        if stor0 < stor0:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if 2 * stor3[arg3 << 248] / stor3[arg3 << 248] != 2:
                            revert with 0, 'SafeMath mul failed'
                        if 0 >= msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        if 2 * stor3[arg3 << 248] != msg.value:
                            revert with 0, 'sorry ether or rID is incorrect'
                        plyr_[stor6].field_0 = plyr_[arg2].field_256
                        plyr_[stor6].field_256 = stor6
                        plyr_[stor6].field_512 = 0
                        plyr_[stor6].field_520 = arg1
                        plyr_[stor6].field_768 = 0
                        plyr_[stor6].field_768 = 0
                        sub_8338d556[address(arg1)]++
                        sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                        if (2 * stor3[arg3 << 248]) + stor0 < stor0:
                            revert with 0, 'SafeMath add failed'
                        stor0 += 2 * stor3[arg3 << 248]
                    stor1++
                    if not stor3[arg3 << 248] / 100:
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                             gas gas_remaining wei
                    else:
                        if 23 * stor3[arg3 << 248] / 100 / stor3[arg3 << 248] / 100 != 23:
                            revert with 0, 'SafeMath mul failed'
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                           value 23 * stor3[arg3 << 248] / 100 wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb632245f: arg3 << 248, block.timestamp, stor6, arg1
                else:
                    mem[256 len 192] = code.data[7284 len 192]
                    mem[64] = 640
                    mem[448] = stor11[stor8[arg2].field_256].field_256
                    mem[480] = stor11[stor8[arg2].field_256].field_512
                    mem[512] = stor11[stor8[arg2].field_256].field_768
                    mem[544] = stor11[stor8[arg2].field_256].field_1024
                    mem[0] = plyr_[arg2].field_256
                    mem[576] = stor11[stor8[arg2].field_256].field_1280
                    mem[608] = plyr_[arg2].field_256
                    idx = 0
                    while uint8(idx) < 6:
                        if mem[(32 * uint8(idx)) + 448]:
                            require uint8(idx) < 6
                            mem[0] = mem[(32 * uint8(idx)) + 448]
                            mem[32] = 8
                            if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 < 55986:
                                require uint8(idx) < 6
                                if plyr_[mem[(32 * uint8(idx)) + 448]].field_768 + 1 < plyr_[mem[(32 * uint8(idx)) + 448]].field_768:
                                    revert with 0, 'SafeMath add failed'
                                plyr_[mem[(32 * uint8(idx)) + 448]].field_768++
                                if (stor3[stor8[stor8[arg2].field_256].field_512] / 13) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0:
                                    revert with 0, 'SafeMath add failed'
                                sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_0 += stor3[stor8[stor8[arg2].field_256].field_512] / 13
                                mem[0] = plyr_[mem[(32 * uint8(idx)) + 448]].field_768
                                mem[32] = 4
                                if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                    if not stor3[stor8[stor8[arg2].field_256].field_512]:
                                        if sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                            revert with 0, 'SafeMath add failed'
                                        _590 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                        mem[0] = mem[(32 * uint8(idx)) + 448]
                                        mem[32] = 8
                                        mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                        mem[mem[64] + 32] = stor3[_590]
                                        mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                        mem[mem[64] + 96] = block.timestamp
                                        emit 0x72825d8b: mem[mem[64]], stor3[_590], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                                    else:
                                        if stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512] / stor3[stor8[stor8[arg2].field_256].field_512] != stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768]:
                                            revert with 0, 'SafeMath mul failed'
                                        if (stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]) + sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 < sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256:
                                            revert with 0, 'SafeMath add failed'
                                        _606 = sha3(mem[(32 * uint8(idx)) + 448], 8)
                                        sub_e5b3f6f2[stor8[mem[(32 * uint8(idx)) + 448]].field_512].field_256 += stor4[stor8[mem[(32 * uint8(idx)) + 448]].field_768] * stor3[stor8[stor8[arg2].field_256].field_512]
                                        mem[0] = mem[(32 * uint8(idx)) + 448]
                                        mem[32] = 8
                                        mem[mem[64]] = plyr_[mem[(32 * uint8(idx)) + 448]].field_520
                                        mem[mem[64] + 32] = stor3[_606]
                                        mem[mem[64] + 64] = plyr_[plyr_[arg2].field_256].field_512
                                        mem[mem[64] + 96] = block.timestamp
                                        emit 0x72825d8b: mem[mem[64]], stor3[_606], plyr_[plyr_[arg2].field_256].field_512, block.timestamp
                        idx = idx + 1
                        continue 
                    s = 0
                    idx = 448
                    while 640 > idx:
                        stor11[stor6][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 6
                    while 6 > idx:
                        stor11[stor6][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if 0 >= msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    if stor3[stor8[stor8[arg2].field_256].field_512] != msg.value:
                        revert with 0, 'sorry ether or rID is incorrect'
                    plyr_[stor6].field_0 = plyr_[arg2].field_256
                    plyr_[stor6].field_256 = stor6
                    plyr_[stor6].field_512 = plyr_[plyr_[arg2].field_256].field_512
                    plyr_[stor6].field_520 = arg1
                    plyr_[stor6].field_768 = mem[224]
                    sub_8338d556[address(arg1)]++
                    sub_8338d556[address(arg1)][sub_8338d556[address(arg1)]] = stor6
                    if stor3[stor8[stor8[arg2].field_256].field_512] + stor0 < stor0:
                        revert with 0, 'SafeMath add failed'
                    stor0 += stor3[stor8[stor8[arg2].field_256].field_512]
                    stor1++
                    if not stor3[stor8[stor8[arg2].field_256].field_512] / 100:
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                             gas gas_remaining wei
                    else:
                        if 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 / stor3[stor8[stor8[arg2].field_256].field_512] / 100 != 23:
                            revert with 0, 'SafeMath mul failed'
                        require ext_code.size(0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3)
                        call 0xda60c3e58a1ddc7da4edb2d1f37e1159812d85a3.0xd0e30db0 with:
                           value 23 * stor3[stor8[stor8[arg2].field_256].field_512] / 100 wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xb632245f: plyr_[plyr_[arg2].field_256].field_512, block.timestamp, stor6, arg1
}



}
