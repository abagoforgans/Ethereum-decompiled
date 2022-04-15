contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    stor1 = code.data[3114 len 20]
    require ext_code.size(code.data[3114 len 20])
    call code.data[3114 len 20].0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 500201707171440 == ext_call.return_data[0]
    stor2 = code.data[3146 len 20]
    require ext_code.size(code.data[3146 len 20])
    call code.data[3146 len 20].0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100201707171503 == ext_call.return_data[0]
    return code.data[379 len 2723]
}



// =====================  Runtime code  =====================


const contractVersion = 700201709192119


mapping of uint256 stor0;
address stor1;
address stor2;
array of struct stor3;

function _fallback() payable {
    revert
}

function tokenHolderCount() {
    require ext_code.size(stor2)
    call stor2.isCurrentAccountReader(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    return stor3.length
}

function balanceOf(address arg1) {
    require ext_code.size(stor2)
    call stor2.isCurrentAccountReader(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    return stor0[address(arg1)]
}

function tokenHolder(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.isCurrentAccountReader(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < stor3.length
    return address(stor3[arg1].field_0)
}

function snapshot() {
    require ext_code.size(stor2)
    call stor2.isCurrentAdmin(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    idx = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
        mem[32] = 0
        stor0[address(stor3[idx].field_0)] = 0
        idx = idx + 1
        continue 
    require ext_code.size(stor1)
    call stor1.0xd13e5846 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor3.length = ext_call.return_data[0]
    if not stor3.length <= ext_call.return_data[0]:
        idx = ext_call.return_data[0]
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    s = 0
    idx = 0
    while idx < stor3.length:
        require ext_code.size(stor1)
        call stor1.0x862a4bf2 with:
             gas gas_remaining - 710 wei
            args idx
        require ext_call.success
        require idx < stor3.length
        address(stor3[idx].field_0) = address(ext_call.return_data[0])
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 0
        stor0[address(ext_call.return_data[0])] = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    emit SnapshotTaken()
}

function snapshotUpdate(address arg1, uint256 arg2, string arg3) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 132] = msg.sender
    require ext_code.size(stor2)
    call stor2.isCurrentAdmin(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    if stor0[address(arg1)] != arg2:
        if stor0[address(arg1)]:
            if arg2 > 0:
                stor0[address(arg1)] = arg2
            else:
                mem[0] = arg1
                mem[32] = 0
                stor0[address(arg1)] = 0
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    if address(stor3[idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    s = idx
                    while s < stor3.length - 1:
                        require s + 1 < stor3.length
                        require s < stor3.length
                        mem[0] = 3
                        address(stor3[s].field_0) = address(stor3[s].field_256)
                        s = s + 1
                        continue 
                    stor3.length--
                    if not stor3.length <= stor3.length - 1:
                        idx = stor3.length + sha3(3) - 1
                        while sha3(3) + stor3.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    mem[ceil32(arg3.length) + 128] = arg1
                    mem[ceil32(arg3.length) + 160] = stor0[address(arg1)]
                    mem[ceil32(arg3.length) + 192] = arg2
                    mem[ceil32(arg3.length) + 224] = 128
                    mem[ceil32(arg3.length) + 256] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 288] = mem[128]
                        s = 128
                        t = ceil32(arg3.length) + 288
                        idx = arg3.length
                        while idx > 32:
                            mem[t + 32] = mem[s + 32]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                    emit SnapshotUpdated(address(arg1), stor0[address(arg1)], arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 288 len arg3.length]));
        else:
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor3.length - 1 < stor3.length
            address(stor3[stor3.length].field_0) = arg1
            stor0[address(arg1)] = arg2
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = stor0[address(arg1)]
        mem[ceil32(arg3.length) + 192] = arg2
        mem[ceil32(arg3.length) + 224] = 128
        mem[ceil32(arg3.length) + 256] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 288] = mem[128]
            mem[ceil32(arg3.length) + 320 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        emit SnapshotUpdated(address(arg1), stor0[address(arg1)], arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 288 len arg3.length]));
}



}
