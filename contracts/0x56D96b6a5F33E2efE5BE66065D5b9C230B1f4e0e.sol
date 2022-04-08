contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[10520 len 20]
    stor2 = code.data[10476 len 32]
    return code.data[135 len 10341]
}



// =====================  Runtime code  =====================


#
#  - sub_591b5a88(?)
#
address owner;
address stor1;
uint256 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_9387730c(?) {
    require owner == msg.sender
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_ee8f5681(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(stor2, ('signextend', 1, ('signextend', 1, ('param', 'arg1')))) 
    require sha256hash.result
    hash = sha256hash(hash, ('signextend', 1, ('signextend', 1, ('param', 'arg2')))) 
    hash = sha256hash(hash, ('signextend', 1, ('signextend', 1, ('param', 'arg3')))) 
    hash = sha256hash(hash, arg4) 
    return hash
}

function sub_2b3a3d0a(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(arg1, 0) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    hash = sha256hash(hash) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 10000
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x15dbfe28 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
    require delegate.return_code
    if 1 == ('signextend', 10, ('delegate.return_data', 0, 32)):
        return 5
    if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 3:
        return 4
    if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 700:
        return 3
    if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 9900:
        return 2
    if ('signextend', 10, ('delegate.return_data', 0, 32)) > 9990:
        return 0
    return 1
}

function sub_718909fd(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(arg1, 0) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    hash = sha256hash(hash) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1000
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x15dbfe28 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
    require delegate.return_code
    require arg2 <= 5
    if arg2 != 2:
        require arg2 <= 5
        if arg2 == 1:
            return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 90
        require arg2 <= 5
        if arg2:
            return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 70
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 50
    require arg3 <= 7
    if not arg3:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 1
    require arg3 <= 7
    if arg3 == 1:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 1
    require arg3 <= 7
    if arg3 == 2:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 500
    require arg3 <= 7
    if arg3 == 3:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 990
    require arg3 <= 7
    if arg3 == 4:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 990
    require arg3 <= 7
    if arg3 == 5:
        return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 990
    require arg3 <= 7
    if arg3 != 6:
        return 0
    return not ('signextend', 10, ('delegate.return_data', 0, 32)) > 634
}

function sub_91e55035(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    if ('signextend', 1, ('signextend', 1, ('param', 'arg1'))) > 10000:
        return 0
    if ('signextend', 1, ('signextend', 1, ('param', 'arg2'))) > 10000:
        return 0
    if ('signextend', 1, ('signextend', 1, ('param', 'arg3'))) > 10000:
        return 0
    if ('signextend', 1, ('signextend', 1, ('param', 'arg1'))) < -10000:
        return 0
    if ('signextend', 1, ('signextend', 1, ('param', 'arg2'))) < -10000:
        return 0
    if ('signextend', 1, ('signextend', 1, ('param', 'arg3'))) < -10000:
        return 0
    if ('signextend', 1, ('add', ('mul', ('signextend', 1, ('param', 'arg3')), ('signextend', 1, ('param', 'arg3'))), ('mul', ('signextend', 1, ('param', 'arg2')), ('signextend', 1, ('param', 'arg2'))), ('mul', ('signextend', 1, ('param', 'arg1')), ('signextend', 1, ('param', 'arg1'))))) < 16960:
        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                 gas gas_remaining - 710 wei
                args 9, 10
            if delegate.return_code:
                return ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))
    else:
        if ('signextend', 1, ('add', ('mul', ('signextend', 1, ('param', 'arg3')), ('signextend', 1, ('param', 'arg3'))), ('mul', ('signextend', 1, ('param', 'arg1')), ('signextend', 1, ('param', 'arg1'))))) >= -28416:
            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                     gas gas_remaining - 710 wei
                    args 1, 60
                if delegate.return_code:
                    return ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))
        else:
            if ('signextend', 1, ('signextend', 1, ('param', 'arg2'))) >= 40:
                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                         gas gas_remaining - 710 wei
                        args 1, 60
                    if delegate.return_code:
                        return ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))
            else:
                if ('signextend', 1, ('signextend', 1, ('param', 'arg2'))) <= -40:
                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                             gas gas_remaining - 710 wei
                            args 1, 60
                        if delegate.return_code:
                            return ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))
                else:
                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                             gas gas_remaining - 710 wei
                            args 1, 2
                        if delegate.return_code:
                            return ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))
    revert
}

function sub_541a9fc1(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(arg1, 0) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    hash = sha256hash(hash) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 1
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 10 * 10^6
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x15dbfe28 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
    require delegate.return_code
    require arg2 <= 5
    if arg2 == 2:
        if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 3:
            return 0
        if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 13003:
            return 1
        if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 73003:
            return 2
        if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 373003:
            return 3
        if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 1133003:
            return 4
        if ('signextend', 10, ('delegate.return_data', 0, 32)) > 2343003:
            return 6
    else:
        require arg2 <= 5
        if arg2 == 1:
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 500000:
                return 3
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 10^6:
                return 4
            if ('signextend', 10, ('delegate.return_data', 0, 32)) > 5500000:
                return 6
        else:
            require arg2 <= 5
            if arg2:
                return 7
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 10^6:
                return 1
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 2 * 10^6:
                return 2
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 4 * 10^6:
                return 3
            if ('signextend', 10, ('delegate.return_data', 0, 32)) <= 6 * 10^6:
                return 4
            if ('signextend', 10, ('delegate.return_data', 0, 32)) > 8 * 10^6:
                return 6
    return 5
}

function sub_c2862430(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(arg1, 0) 
    require sha256hash.result
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 25
    require delegate.return_code
    hash = sha256hash(hash, 0) 
    require sha256hash.result
    hash = sha256hash(hash) 
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 25
    require delegate.return_code
    hash = sha256hash(hash, 0) 
    require sha256hash.result
    hash = sha256hash(hash) 
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
         gas gas_remaining - 710 wei
        args 25
    require delegate.return_code
    hash = sha256hash(hash, 0) 
    require sha256hash.result
    hash = sha256hash(hash) 
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
    require delegate.return_code
    require ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848)
    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
         gas gas_remaining - 710 wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
    require delegate.return_code
    return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32)))), 
           ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32)))),
           ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
}

function sub_2e0d8831(?) {
    require ext_code.size(stor1)
    call stor1.0x4af5fb0f with:
         gas gas_remaining - 710 wei
        args msg.sender, tx.origin
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(arg1, 0) 
    require sha256hash.result
    require arg2 <= 5
    if arg2 == 5:
        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                 gas gas_remaining - 710 wei
                args 5
            if delegate.return_code:
                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                         gas gas_remaining - 710 wei
                        args 50
                    if delegate.return_code:
                        hash = sha256hash(hash) 
                        if sha256hash.result:
                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                     gas gas_remaining - 710 wei
                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                if delegate.return_code:
                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                             gas gas_remaining - 710 wei
                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                        if delegate.return_code:
                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
    else:
        if arg2 <= 5:
            if arg2 == 4:
                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                         gas gas_remaining - 710 wei
                        args 11, 10
                    if delegate.return_code:
                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                 gas gas_remaining - 710 wei
                                args 2
                            if delegate.return_code:
                                hash = sha256hash(hash) 
                                if sha256hash.result:
                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                             gas gas_remaining - 710 wei
                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                        if delegate.return_code:
                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                     gas gas_remaining - 710 wei
                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                if delegate.return_code:
                                                    return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
            else:
                if arg2 <= 5:
                    if arg2 == 3:
                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                 gas gas_remaining - 710 wei
                                args 3, 10
                            if delegate.return_code:
                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                         gas gas_remaining - 710 wei
                                        args 11, 10
                                    if delegate.return_code:
                                        hash = sha256hash(hash) 
                                        if sha256hash.result:
                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                     gas gas_remaining - 710 wei
                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                if delegate.return_code:
                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                             gas gas_remaining - 710 wei
                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                        if delegate.return_code:
                                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                    else:
                        if arg2 <= 5:
                            if arg2 != 2:
                                if arg2 <= 5:
                                    if arg2 == 1:
                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                 gas gas_remaining - 710 wei
                                                args 40
                                            if delegate.return_code:
                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                         gas gas_remaining - 710 wei
                                                        args 50
                                                    if delegate.return_code:
                                                        hash = sha256hash(hash) 
                                                        if sha256hash.result:
                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                     gas gas_remaining - 710 wei
                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                if delegate.return_code:
                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                        if delegate.return_code:
                                                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                    else:
                                        if arg2 <= 5:
                                            if arg2:
                                                return 0
                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                     gas gas_remaining - 710 wei
                                                    args 50
                                                if delegate.return_code:
                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                             gas gas_remaining - 710 wei
                                                            args 70
                                                        if delegate.return_code:
                                                            hash = sha256hash(hash) 
                                                            if sha256hash.result:
                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                         gas gas_remaining - 710 wei
                                                                        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                    if delegate.return_code:
                                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                            if delegate.return_code:
                                                                                return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                            else:
                                if arg3 <= 7:
                                    if not arg3:
                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                 gas gas_remaining - 710 wei
                                                args 16
                                            if delegate.return_code:
                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                         gas gas_remaining - 710 wei
                                                        args 40
                                                    if delegate.return_code:
                                                        hash = sha256hash(hash) 
                                                        if sha256hash.result:
                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                     gas gas_remaining - 710 wei
                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                if delegate.return_code:
                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                        if delegate.return_code:
                                                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                    else:
                                        if arg3 <= 7:
                                            if arg3 == 1:
                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                         gas gas_remaining - 710 wei
                                                        args 21, 10
                                                    if delegate.return_code:
                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xf5a5d503 with:
                                                                 gas gas_remaining - 710 wei
                                                                args 16
                                                            if delegate.return_code:
                                                                hash = sha256hash(hash) 
                                                                if sha256hash.result:
                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                             gas gas_remaining - 710 wei
                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                        if delegate.return_code:
                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                if delegate.return_code:
                                                                                    return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                            else:
                                                if arg3 <= 7:
                                                    if arg3 == 2:
                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                 gas gas_remaining - 710 wei
                                                                args 14, 10
                                                            if delegate.return_code:
                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args 21, 10
                                                                    if delegate.return_code:
                                                                        hash = sha256hash(hash) 
                                                                        if sha256hash.result:
                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                                if delegate.return_code:
                                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                        if delegate.return_code:
                                                                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                                    else:
                                                        if arg3 <= 7:
                                                            if arg3 == 3:
                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args 104, 100
                                                                    if delegate.return_code:
                                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args 14, 10
                                                                            if delegate.return_code:
                                                                                hash = sha256hash(hash) 
                                                                                if sha256hash.result:
                                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                                        if delegate.return_code:
                                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                                if delegate.return_code:
                                                                                                    return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                                            else:
                                                                if arg3 <= 7:
                                                                    if arg3 == 4:
                                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args 80, 100
                                                                            if delegate.return_code:
                                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args 104, 100
                                                                                    if delegate.return_code:
                                                                                        hash = sha256hash(hash) 
                                                                                        if sha256hash.result:
                                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                                                if delegate.return_code:
                                                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                                        if delegate.return_code:
                                                                                                            return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                                                    else:
                                                                        if arg3 <= 7:
                                                                            if arg3 == 5:
                                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args 45, 100
                                                                                    if delegate.return_code:
                                                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args 80, 100
                                                                                            if delegate.return_code:
                                                                                                hash = sha256hash(hash) 
                                                                                                if sha256hash.result:
                                                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                                                        if delegate.return_code:
                                                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                                                if delegate.return_code:
                                                                                                                    return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
                                                                            else:
                                                                                if arg3 <= 7:
                                                                                    if arg3 != 6:
                                                                                        return 0
                                                                                    if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                        delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args 8, 100
                                                                                        if delegate.return_code:
                                                                                            if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x1dade0d4 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args 45, 100
                                                                                                if delegate.return_code:
                                                                                                    hash = sha256hash(hash) 
                                                                                                    if sha256hash.result:
                                                                                                        if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                            delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0x84f1bd4e with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('var', 'hash'))))
                                                                                                            if delegate.return_code:
                                                                                                                if ext_code.size(0x3c018100533af417f286331e0ba3b65a288fa848):
                                                                                                                    delegate 0x3c018100533af417f286331e0ba3b65a288fa848.0xb6972146 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('delegate.return_data', 0, 32)))), 0
                                                                                                                    if delegate.return_code:
                                                                                                                        return ('signextend', 15, ('signextend', 15, ('mask_shl', 255, 0, 1, ('delegate.return_data', 0, 32))))
    revert
}



}
