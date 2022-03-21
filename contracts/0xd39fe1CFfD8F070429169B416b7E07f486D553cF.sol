contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 569]
}



// =====================  Runtime code  =====================


address stor0;
uint256 contentCount;

function contentCount() payable {
    return contentCount
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function flush() payable {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function add(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    if arg3 != 1:
        require msg.value <= 6 * 10^15
        contentCount++
        emit content(Array(len=arg1.length, data=arg1[all]), arg4, msg.value, arg2, msg.sender, arg3);
    else:
        if arg4 <= 336 * 24 * 3600:
            if msg.value >= 4 * 10^15:
                require msg.value <= 6 * 10^15
                contentCount++
                emit content(Array(len=arg1.length, data=arg1[all]), arg4, msg.value, arg2, msg.sender, arg3);
        else:
            if arg4 <= 672 * 24 * 3600:
                if msg.value >= 6 * 10^15:
                    require msg.value <= 6 * 10^15
                    contentCount++
                    emit content(Array(len=arg1.length, data=arg1[all]), arg4, msg.value, arg2, msg.sender, arg3);
            else:
                if msg.value >= 6 * 10^15:
                    require msg.value <= 6 * 10^15
                    contentCount++
                    mem[ceil32(arg1.length) + 256 len arg1.length] = arg1[all]
                    if not arg1.length % 32:
                        emit content(string rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                     96,
                                     672 * 24 * 3600,
                                     msg.value,
                                     arg1.length,
                                     arg1[all],
                                     arg2,
                                     msg.sender,
                                     arg3,
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
                        emit content(string rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                     96,
                                     672 * 24 * 3600,
                                     msg.value,
                                     arg1.length,
                                     arg1[all],
                                     mem[ceil32(arg1.length) + arg1.length + 256 len -(arg1.length % 32) + 32],
                                     arg2,
                                     msg.sender,
                                     arg3,
}



}
