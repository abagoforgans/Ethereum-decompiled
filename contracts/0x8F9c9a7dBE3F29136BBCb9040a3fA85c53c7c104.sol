contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = code.data[3542 len 20]
    bool(stor5.length) = 0
    stor5.length.field_1 = 17
    stor5.length.field_8 = 'Created New Order' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 1
    if 31 >= stor5.length:
        stor6.length = stor5.length
        idx = 0
        while stor6.length + 31 / 32 > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor6.length = Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length) + 1
        if not Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length):
            idx = 0
            while stor6.length + 31 / 32 > idx:
                stor6[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor6[s] = stor5[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor5.length + 31 / 32
            while stor6.length + 31 / 32 > idx:
                stor6[idx] = 0
                idx = idx + 1
                continue 
    return code.data[706 len 2824]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
address buyerAddress;
uint256 sub_4f9a7f2e;
uint256 sub_9201902a;
array of uint256 sub_1d5f2493;
array of uint256 message;
array of uint256 sub_754db50a;
uint256 sub_1e8b9d11;

function sub_1d5f2493(?) {
    return sub_1d5f2493[0 len sub_1d5f2493.length].field_0
}

function sub_1e8b9d11(?) {
    return sub_1e8b9d11
}

function sub_4f9a7f2e(?) {
    return sub_4f9a7f2e
}

function buyer() {
    return buyerAddress
}

function sub_754db50a(?) {
    return sub_754db50a[0 len sub_754db50a.length]
}

function owner() {
    return owner
}

function sub_9201902a(?) {
    return sub_9201902a
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if msg.sender == stor0:
        if arg1:
            stor0 = arg1
}

function sub_5f71d38c(?) {
    bool(sub_1d5f2493.length) = 0
    sub_1d5f2493.length.field_1 = 17
    sub_1d5f2493.length.field_8 = 'Order details set' / 256
    idx = 0
    while sub_1d5f2493.length + 31 / 32 > idx:
        sub_1d5f2493[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 31 >= sub_1d5f2493.length:
        message.length = sub_1d5f2493.length
        idx = 0
        while message.length + 31 / 32 > idx:
            message[idx] = 0
            idx = idx + 1
            continue 
    else:
        message.length = Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length) + 1
        if not Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length):
            idx = 0
            while message.length + 31 / 32 > idx:
                message[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_1d5f2493.length + 31 / 32 > idx:
                message[s] = sub_1d5f2493[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_1d5f2493.length + 31 / 32
            while message.length + 31 / 32 > idx:
                message[idx] = 0
                idx = idx + 1
                continue 
    sub_1e8b9d11 = 2
    sub_4f9a7f2e = arg2
    sub_9201902a = arg1
}

function cancelOrder() {
    bool(sub_1d5f2493.length) = 0
    sub_1d5f2493.length.field_1 = 15
    sub_1d5f2493.length.field_8 = 'Order Cancelled' / 256
    idx = 0
    while sub_1d5f2493.length + 31 / 32 > idx:
        sub_1d5f2493[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 31 >= sub_1d5f2493.length:
        message.length = sub_1d5f2493.length
        idx = 0
        while message.length + 31 / 32 > idx:
            message[idx] = 0
            idx = idx + 1
            continue 
    else:
        message.length = Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length) + 1
        if not Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length):
            idx = 0
            while message.length + 31 / 32 > idx:
                message[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_1d5f2493.length + 31 / 32 > idx:
                message[s] = sub_1d5f2493[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_1d5f2493.length + 31 / 32
            while message.length + 31 / 32 > idx:
                message[idx] = 0
                idx = idx + 1
                continue 
    sub_1e8b9d11 = 4
    if msg.sender == owner:
        return 1
    revert 
}

function sub_b93565d2(?) {
    if block.number >= sub_9201902a:
        bool(sub_1d5f2493.length) = 0
        sub_1d5f2493.length.field_1 = 15
        sub_1d5f2493.length.field_8 = 'Order Activated' / 256
        idx = 0
        while sub_1d5f2493.length + 31 / 32 > idx:
            sub_1d5f2493[idx].field_0 = 0
            idx = idx + 1
            continue 
        if 31 >= sub_1d5f2493.length:
            message.length = sub_1d5f2493.length
            idx = 0
            while message.length + 31 / 32 > idx:
                message[idx] = 0
                idx = idx + 1
                continue 
        else:
            message.length = Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length) + 1
            if not Mask(255, 1, (256 * not bool(sub_1d5f2493.length)) - 1 and sub_1d5f2493.length):
                idx = 0
                while message.length + 31 / 32 > idx:
                    message[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_1d5f2493.length + 31 / 32 > idx:
                    message[s] = sub_1d5f2493[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_1d5f2493.length + 31 / 32
                while message.length + 31 / 32 > idx:
                    message[idx] = 0
                    idx = idx + 1
                    continue 
        sub_1e8b9d11 = 3
    require msg.sender == owner
    return 1
}



}
