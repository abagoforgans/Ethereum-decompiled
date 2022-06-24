contract main {




// =====================  Runtime code  =====================


const VERSION = 1


uint256 stor0;
uint256 stor1;
uint256 sub_909af89a;
array of struct stor3;

function sub_909af89a(?) payable {
    return sub_909af89a
}

function _fallback() payable {
    revert
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    stor1++
    emit Delegate(stor1, msg.sender, arg1);
}

function sub_aef66981(?) payable {
    require calldata.size - 4 >= 32
    if stor3[address(arg1)].field_0 <= 0:
        revert with 0, 'Guardian never voted'
    if stor3[address(arg1)].field_256:
        mem[128] = stor3[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * stor3[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = stor3[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3[address(arg1)].field_256) + 224 len floor32(stor3[address(arg1)].field_256)] = mem[128 len floor32(stor3[address(arg1)].field_256)]
    return Array(len=stor3[address(arg1)].field_256, data=mem[128 len floor32(stor3[address(arg1)].field_256)], mem[(32 * stor3[address(arg1)].field_256) + floor32(stor3[address(arg1)].field_256) + 224 len (32 * stor3[address(arg1)].field_256) - floor32(stor3[address(arg1)].field_256)]), 
           stor3[address(arg1)].field_0
}

function sub_f8222020(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > sub_909af89a:
        revert with 0, 
                    32,
                    37,
                    0xfe4e6f646573206c697374206973206f7665722074686520616c6c6f776564206c656e6774,
                    mem[(32 * arg1.length) + 233 len 27]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2160 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'All nodes must be non 0'
        require idx < arg1.length
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = address(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    stor0++
    mem[(64 * arg1.length) + 160] = block.number
    mem[(64 * arg1.length) + 192] = 96
    stor3[address(msg.sender)].field_0 = block.number
    stor3[address(msg.sender)].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while stor3[address(msg.sender)].field_256 > idx:
            stor3[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor3[address(msg.sender)][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3[address(msg.sender)].field_256 > idx:
            stor3[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 256] = stor0
    mem[(64 * arg1.length) + 224] = 64
    mem[(64 * arg1.length) + 288] = arg1.length
    mem[(64 * arg1.length) + 320 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    emit 0x4ad31339: mem[(64 * arg1.length) + 224 len (161 * arg1.length) + 96], msg.sender
}



}
