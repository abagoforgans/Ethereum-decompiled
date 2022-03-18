contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    mem[96 len -1559] = code.data[1962 len -1559]
    mem[64] = -1463
    stor0 = mem[96]
    stor1 = mem[128]
    stor2 = mem[160]
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
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 32 / 32
        while stor7.length + 31 / 32 > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    return code.data[403 len 1559]
}



// =====================  Runtime code  =====================


uint256 start;
uint256 end;
uint8 sub_de1b7b4f;
uint256 stor3;
array of address sub_0e96b91d;
mapping of struct index;
array of address voters;
array of uint256 stor7;
array of uint256 results;

function sub_0bed0502(?) payable {
    return sub_de1b7b4f
}

function sub_0e96b91d(?) payable {
    require arg1 < sub_0e96b91d.length
    return sub_0e96b91d[arg1]
}

function index(address arg1) payable {
    return index[arg1].field_0
}

function results(uint256 arg1) payable {
    require arg1 < results.length
    return results[arg1]
}

function ballots(uint256 arg1) payable {
    require arg1 < stor7.length
    return ballots[uint8(arg1)]
}

function start() payable {
    return start
}

function voters(uint256 arg1) payable {
    require arg1 < voters.length
    return address(voters[arg1].field_0)
}

function sub_de1b7b4f(?) payable {
    return sub_de1b7b4f
}

function end() payable {
    return end
}

function _fallback() payable {
  stop
}

function count() payable {
    if block.timestamp <= end:
        return 0
    if results.length != 0:
        return 0
    results.length = sub_de1b7b4f
    if not results.length <= sub_de1b7b4f:
        idx = sub_de1b7b4f
        while results.length > idx:
            results[idx] = 0
            idx = idx + 1
            continue 
    idx = 1
    while idx < stor7.length:
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < results.length
        mem[0] = 8
        results[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]++
        idx = idx + 1
        continue 
    sub_de1b7b4f = 0
    return 1
}

function sub_5aba229a(?) payable {
    s = 0
    idx = 0
    while idx < sub_0e96b91d.length:
        mem[0] = 4
        mem[100] = tx.origin
        call sub_0e96b91d[idx].isMember(address rg1) with:
             gas gas_remaining - 25050 wei
            args tx.origin
        mem[96] = ext_call.return_data[0]
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
        if arg1 <= sub_de1b7b4f:
            if index[tx.origin].field_0:
                require index[tx.origin].field_0 < voters.length
                voters[stor5[tx.origin].field_0].field_0 = tx.origin or Mask(96, 160, voters[stor5[tx.origin].field_0].field_0)
                require index[tx.origin].field_0 < stor7.length
                stor7[Mask(251, 0, stor5[tx.origin].field_5)] = 256^index[tx.origin].field_0 % 32 * arg1 or stor7[Mask(251, 0, stor5[tx.origin].field_5)] and !(255 * 256^index[tx.origin].field_0 % 32)
                stor3++
                emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + index[tx.origin].field_0 + stor3 + 1)
                return sha3(block.timestamp + index[tx.origin].field_0 + stor3 + 1)
            voters.length++
            if not voters.length <= voters.length + 1:
                idx = voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                while voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = sha3(7) + (stor7.length + 32 / 32)
                while sha3(7) + (stor7.length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require voters.length < voters.length
            voters[voters.length].field_0 = tx.origin or Mask(96, 160, voters[voters.length].field_0)
            require voters.length < stor7.length
            stor7[Mask(251, 0, stor6.length.field_5)] = 256^voters.length % 32 * arg1 or stor7[Mask(251, 0, stor6.length.field_5)] and !(255 * 256^voters.length % 32)
        else:
            if index[tx.origin].field_0:
                require index[tx.origin].field_0 < voters.length
                voters[stor5[tx.origin].field_0].field_0 = tx.origin or Mask(96, 160, voters[stor5[tx.origin].field_0].field_0)
                require index[tx.origin].field_0 < stor7.length
                stor7[Mask(251, 0, stor5[tx.origin].field_5)] = stor7[Mask(251, 0, stor5[tx.origin].field_5)] and !(255 * 256^index[tx.origin].field_0 % 32)
                stor3++
                emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + index[tx.origin].field_0 + stor3 + 1)
                return sha3(block.timestamp + index[tx.origin].field_0 + stor3 + 1)
            voters.length++
            if not voters.length <= voters.length + 1:
                idx = voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                while voters.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = sha3(7) + (stor7.length + 32 / 32)
                while sha3(7) + (stor7.length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require voters.length < voters.length
            voters[voters.length].field_0 = tx.origin or Mask(96, 160, voters[voters.length].field_0)
            require voters.length < stor7.length
            stor7[Mask(251, 0, stor6.length.field_5)] = stor7[Mask(251, 0, stor6.length.field_5)] and !(255 * 256^voters.length % 32)
        index[tx.origin].field_0 = voters.length
        stor3++
        emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + voters.length + stor3 + 1)
        return sha3(block.timestamp + voters.length + stor3 + 1)
    return 0
}



}
