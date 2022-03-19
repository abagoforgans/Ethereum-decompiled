contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint8 stor2;
uint256 stor3;

function _fallback() payable {
    mem[96 len -2417] = code.data[2653 len -2417]
    mem[64] = -2321
    stor3 = tx.origin or Mask(96, 160, stor3)
    s = 0
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        s = mem[(32 * idx) + mem[96] + 128]
        idx = idx + 1
        continue 
    stor1 = mem[128]
    return code.data[236 len 2417]
}



// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


mapping of struct stor0;
uint256 stor1;
mapping of uint8 stor2;
address stor3;

function kill() payable {
    if tx.origin == stor3:
        selfdestruct(tx.origin)
}

function _fallback() payable {
    emit Received(tx.origin, msg.value);
}

function approve(bytes32 arg1) payable {
    if stor2[tx.origin]:
        if stor0[arg1].field_256 > 0:
            if stor0[arg1][3][tx.origin].field_0:
                emit 0x7a1a5c65: 0
            else:
                stor0[arg1][3][tx.origin].field_0 = 1
                stor0[arg1].field_1024--
                mem[128] = tx.origin
                emit 0xdc9da68b: arg1, tx.origin
                if stor0[arg1].field_1024:
                    emit 0x7a1a5c65: 0
                else:
                    mem[96] = stor0[arg1][2].field_0
                    idx = 96
                    s = 0
                    while stor0[arg1][2].length + 96 > idx + 32:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call stor0[arg1].field_0.mem[96 len 4] with:
                       value stor0[arg1].field_256 wei
                         gas gas_remaining - 34050 wei
                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                    emit 0x517b8b71: arg1, stor0[arg1].field_0, stor0[arg1].field_256
                    emit 0x7a1a5c65: 1
}

function sub_fc82dcb9(?) payable {
    if stor2[tx.origin]:
        mem[256 len arg3.length] = arg3[all]
        stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_0 = arg1 or Mask(96, 160, stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_0)
        stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_256 = arg2
        stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_1024 = stor1
        if stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][3][tx.origin].field_0:
            emit 0x46b5bbfd: sha3(tx.origin, arg1, arg2, arg3[all], block.number, arg4), tx.origin, address(arg1), arg2
        else:
            stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][3][tx.origin].field_0 = 1
            stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_1024--
            if stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_1024:
                emit 0x46b5bbfd: sha3(tx.origin, arg1, arg2, arg3[all], block.number, arg4), tx.origin, address(arg1), arg2
            else:
                mem[ceil32(arg3.length) + 256] = stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2].field_0
                idx = ceil32(arg3.length) + 256
                s = 0
                while ceil32(arg3.length) + stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2].length + 256 > idx + 32:
                    mem[idx + 32] = stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_0.mem[ceil32(arg3.length) + 256 len 4] with:
                   value stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_256 wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg3.length) + 260 len stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2].length + (floor32(stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2].length - 1) + -stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4][2].length + 32 % 32) - 4]
                emit 0x517b8b71: sha3(tx.origin, arg1, arg2, arg3[all], block.number, arg4), stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_0, stor0[tx.origin][arg1][arg2][arg3[all]][block.number][arg4].field_256
        emit 0xb0d57fca: sha3(tx.origin, arg1, arg2, arg3[all], block.number, arg4)
}



}
