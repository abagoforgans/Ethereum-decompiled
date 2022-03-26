contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 993]




// =====================  Runtime code  =====================


uint256 sub_1e007936;
uint256 sub_67b3d32f;
uint256 sub_666ee1b3;
uint256 sub_c4a91ed1;

function sub_1e007936(?) {
    return sub_1e007936
}

function sub_666ee1b3(?) {
    return sub_666ee1b3
}

function sub_67b3d32f(?) {
    return sub_67b3d32f
}

function sub_c4a91ed1(?) {
    return sub_c4a91ed1
}

function _fallback() payable {
    revert 
}

function sub_a8f17c1b(?) {
    sub_666ee1b3 = 0
    sub_1e007936 = 0
    sub_67b3d32f = 0
    sub_c4a91ed1 = 0
}

function sub_24ad6ca6(?) {
    if msg.sender != 0xedf3a46b33e65b96172e62aeee733a1ff2e8fb3:
        require 0x4f5667729706e80a905405b1647e199b8f054b9 == msg.sender
    sub_c4a91ed1 = 1
}

function GetBalance() {
    require msg.value <= 0
    if 0xedf3a46b33e65b96172e62aeee733a1ff2e8fb3 == msg.sender:
        return sub_1e007936
    require 0x4f5667729706e80a905405b1647e199b8f054b9 == msg.sender
    return sub_67b3d32f
}

function sub_bed61e9f(?) {
    if 0xedf3a46b33e65b96172e62aeee733a1ff2e8fb3 == msg.sender:
        sub_1e007936 += msg.value
    else:
        require 0x4f5667729706e80a905405b1647e199b8f054b9 == msg.sender
        sub_67b3d32f += msg.value
}

function sub_ca8bcec9(?) {
    require sub_c4a91ed1
    if msg.sender != 0x4f5667729706e80a905405b1647e199b8f054b9:
        if msg.sender != 0xedf3a46b33e65b96172e62aeee733a1ff2e8fb3:
        sub_1e007936 = 0
        call 0x0edf3a46b33e65b96172e62aeee733a1ff2e8fb3 with:
           value sub_1e007936 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        sub_67b3d32f = 0
        call 0x04f5667729706e80a905405b1647e199b8f054b9 with:
           value sub_67b3d32f wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            if msg.sender != 0xedf3a46b33e65b96172e62aeee733a1ff2e8fb3:
            sub_1e007936 = 0
            call 0x0edf3a46b33e65b96172e62aeee733a1ff2e8fb3 with:
               value sub_1e007936 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
}

function sub_6932278f(?) {
    require sub_c4a91ed1 != 1
    if 0x4f5667729706e80a905405b1647e199b8f054b9 == msg.sender:
        sub_666ee1b3 = arg1
        sub_1e007936 = arg1 - sub_666ee1b3 + sub_1e007936
        sub_67b3d32f = sub_67b3d32f - arg1 + sub_666ee1b3
        if arg1 - sub_666ee1b3 + sub_1e007936 < 100:
            sub_c4a91ed1 = 1
            if sub_1e007936 < 0:
                sub_67b3d32f += sub_1e007936
                sub_1e007936 = 0
            else:
                if sub_67b3d32f < 0:
                    sub_1e007936 += sub_67b3d32f
                    sub_67b3d32f = 0
        else:
            if sub_67b3d32f < 100:
                sub_c4a91ed1 = 1
                if sub_1e007936 < 0:
                    sub_67b3d32f += sub_1e007936
                    sub_1e007936 = 0
                else:
                    if sub_67b3d32f < 0:
                        sub_1e007936 += sub_67b3d32f
                        sub_67b3d32f = 0
}



}
