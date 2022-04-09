contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint32 stor0;
uint64 stor0; offset 24
address stor0; offset 64

function _fallback() payable {
    stor0.field_0 % 16777216 = 100000
    stor0.field_24 % 1099511627776 = 0
    address(stor0.field_64) = msg.sender
    stor0.field_256 % 1 = 0
    return code.data[81 len 1724]
}



// =====================  Runtime code  =====================


uint64 stor0;
address owner; offset 64
uint256 stor0;
mapping of uint64 stor1;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function myBalance() {
    return ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
}

function outstandingValue() {
    if owner == msg.sender:
        return ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0)))))))
    else:
        return 0
}

function holderBalance(address arg1) {
    if owner == msg.sender:
        return ('signextend', 7, ('signextend', 7, ('signextend', 7, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)))))))
    else:
        return 0
}

function move(address arg1, int64 arg2) {
    if ('signextend', 7, ('signextend', 7, ('param', 'arg2'))) <= 0:
        emit 0x12aa8097: Array(len=33, data='Must move value greater than zer', 'o')
    else:
        if ('signextend', 7, ('signextend', 7, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))) < ('signextend', 7, ('signextend', 7, ('param', 'arg2'))):
            emit 0x12aa8097: Array(len=34, data='value to move larger than holdin', 'gs')
        else:
            uint64(stor1[address(arg1)]) = uint64(('signextend', 7, ('add', ('signextend', 7, ('param', 'arg2')), ('signextend', 7, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))))))
            uint64(stor1[msg.sender]) = uint64(('signextend', 7, ('add', ('signextend', 7, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor1', 1))))), ('mul', -1, ('signextend', 7, ('param', 'arg2'))))))
            emit CoinMovement(msg.sender, address(arg1), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))));
}

function allocate(address arg1, int64 arg2) payable {
    if owner != msg.sender:
        emit 0x12aa8097: Array(len=29, data='Only owner can allocate coins')
    else:
        if ('signextend', 7, ('signextend', 7, ('param', 'arg2'))) < 0:
            emit 0x12aa8097: Array(len=30, data='Cannot allocate negative value')
        else:
            if ('signextend', 7, ('signextend', 7, ('param', 'arg2'))) > ('signextend', 7, ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0)))))):
                emit 0x12aa8097: Array(len=47, data='value to allocate larger than ou', 'tstanding coins')
            else:
                uint64(stor1[address(arg1)]) = uint64(('signextend', 7, ('add', ('signextend', 7, ('param', 'arg2')), ('signextend', 7, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))))))
                uint64(stor0.field_0) = uint64(('signextend', 7, ('add', ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0))))), ('mul', -1, ('signextend', 7, ('param', 'arg2'))))))
                emit CoinAllocation(address(arg1), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('or', ('mask_shl', 192, 64, 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0))))), ('mask_shl', 64, 0, 0, ('signextend', 7, ('add', ('signextend', 7, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0))))), ('mul', -1, ('signextend', 7, ('param', 'arg2')))))))))));
}



}
