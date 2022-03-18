contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
uint256 stor4;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    mem[96 len -2347] = code.data[3030 len -2347]
    mem[64] = -2251
    stor0 = mem[96]
    stor1 = mem[128]
    stor2.length = mem[mem[160] + 96]
    mem[0] = 2
    if not mem[mem[160] + 96]:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor2 = mem[idx] * 256^s or !(255 * 256^s) and stor2
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) + (-1 * Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5 * None + 3 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor4 = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor6++
    if not stor6 <= stor6 + 1:
        idx = stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
        while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor7++
    if not stor7 <= stor7 + 1:
        idx = stor7 - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977
        while stor7 - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
            uint256(stor[idx]) = 0
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    return code.data[683 len 2347]
}



// =====================  Runtime code  =====================


uint256 start;
uint256 end;
array of uint256 stor2;
uint256 stor3;
array of address sub_0e96b91d;
mapping of uint256 index;
array of address voters;
array of uint256 stor7;

function sub_0e96b91d(?) payable {
    require arg1 < sub_0e96b91d.length
    return sub_0e96b91d[arg1]
}

function index(address arg1) payable {
    return index[arg1]
}

function start() payable {
    return start
}

function results(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor8.length
    require arg2 < stor8[arg1]
    return stor[('array', ('param', 'arg1'), ('name', 'stor8', 8)) + arg2]
}

function voters(uint256 arg1) payable {
    require arg1 < voters.length
    return address(voters[arg1])
}

function sub_de1b7b4f(?) payable {
    return stor2.length
}

function sub_e73cf0da(?) payable {
    require arg1 < stor2.length
    return sub_e73cf0da[uint8(arg1)]
}

function end() payable {
    return end
}

function sub_ff3aa422(?) payable {
    require arg1 < stor7.length
    require arg2 < stor7[arg1]
    return sub_ff3aa422[uint8(arg2)]
}

function _fallback() payable {
  stop
}

function count() payable {
    if block.timestamp <= end:
        return 0
    if stor8.length != 0:
        return 0
    stor8.length = stor2.length
    if not stor8.length <= stor2.length:
        mem[0] = 8
        idx = stor2.length
        while sha3(8) + stor8.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    s = 0
    idx = 0
    while uint8(idx) < stor2.length:
        require idx < stor2.length
        require idx < stor8.length
        mem[0] = 8
        stor8[idx] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
        if not stor8[idx] <= stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]:
            mem[0] = idx - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d
            s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)] + sha3(idx - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d)
            while sha3(idx - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d) + stor8[idx] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        s = 1
        while s < stor7.length:
            require idx < stor8.length
            require s < stor7.length
            require idx < stor7[s]
            require stor((0.03125 / idx) + ('array', ('var', 1), ('name', 'stor7', 7)))[uint8(idx)] < stor8[idx]
            mem[0] = idx + sha3(8)
            stor[stor((0.03125 / idx) + ('array', ('var', 1), ('name', 'stor7', 7)))[uint8(idx)] + ('array', ('var', 0), ('name', 'stor8', 8))]++
            s = s + 1
            continue 
        s = stor7.length
        idx = idx + 1
        continue 
    return 1
}

function sub_976a3a4d(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < sub_0e96b91d.length:
        mem[0] = 4
        mem[(32 * arg1.length) + 132] = tx.origin
        call sub_0e96b91d[idx].0xa230c524 with:
             gas gas_remaining - 25050 wei
            args tx.origin
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = sub_0e96b91d[idx]
            idx = idx + 1
            continue 
        if start > block.timestamp:
            s = sub_0e96b91d[idx]
            idx = idx + 1
            continue 
        if block.timestamp > end:
            s = sub_0e96b91d[idx]
            idx = idx + 1
            continue 
        if arg1.length != stor2.length:
            s = sub_0e96b91d[idx]
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            require idx < arg1.length
            if mem[(32 * idx) + 159 len 1] > stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]:
                require idx < arg1.length
                mem[(32 * idx) + 128] = 0
            idx = idx + 1
            continue 
        if index[tx.origin]:
            require index[tx.origin] < voters.length
            uint256(voters[stor5[tx.origin]]) = tx.origin or Mask(96, 160, uint256(voters[stor5[tx.origin]]))
            require index[tx.origin] < stor7.length
            stor7[stor5[tx.origin]] = arg1.length
            if not arg1.length:
                idx = sha3(index[tx.origin] + sha3(7))
                while sha3(index[tx.origin] + sha3(7)) + (stor7[stor5[tx.origin]] + 31 / 32) > idx:
                    uint8(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor7[stor5[tx.origin]] = mem[idx] * 256^s or !(255 * 256^s) and stor7[stor5[tx.origin]]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                s = sha3(index[tx.origin] + sha3(7))
                while idx:
                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = sha3(index[tx.origin] + sha3(7)) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
                while sha3(index[tx.origin] + sha3(7)) + (stor7[stor5[tx.origin]] + 31 / 32) > idx:
                    uint8(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            stor3++
            emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + index[tx.origin] + stor3 + 1)
            return sha3(block.timestamp + index[tx.origin] + stor3 + 1)
        voters.length++
        if not voters.length <= voters.length + 1:
            idx = voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
            while voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977
            while stor7.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(s)
                while sha3(s) + (uint256(stor[s]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
        require voters.length < voters.length
        uint256(voters[voters.length]) = tx.origin or Mask(96, 160, uint256(voters[voters.length]))
        require voters.length < stor7.length
        stor7[stor6.length] = arg1.length
        if not arg1.length:
            idx = sha3(voters.length + sha3(7))
            while sha3(voters.length + sha3(7)) + (stor7[stor6.length] + 31 / 32) > idx:
                uint8(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor7[stor6.length] = mem[idx] * 256^s or !(255 * 256^s) and stor7[stor6.length]
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            s = sha3(voters.length + sha3(7))
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = sha3(voters.length + sha3(7)) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
            while sha3(voters.length + sha3(7)) + (stor7[stor6.length] + 31 / 32) > idx:
                uint8(stor[idx]) = 0
                idx = idx + 1
                continue 
        index[tx.origin] = voters.length
        stor3++
        emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + voters.length + stor3 + 1)
        return sha3(block.timestamp + voters.length + stor3 + 1)
    return 0
}



}
