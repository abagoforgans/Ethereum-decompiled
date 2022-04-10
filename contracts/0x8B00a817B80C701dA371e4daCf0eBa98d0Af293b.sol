contract main {


// =======================  Init code  ======================


uint64 stor1; offset 160
address stor1;
bool stor2; offset 256
uint32 stor2;
uint32 stor2; offset 96
uint128 stor2; offset 24
uint128 stor2; offset 128
uint16 stor3;
uint64 stor3; offset 16
uint64 stor3; offset 64

function _fallback() {
    address(stor1.field_0) = msg.sender
    emit LogSetOwner(msg.sender);
    uint64(stor1.field_160) = uint64(block.timestamp)
    uint16(stor3.field_0) = 0
    stor3.field_16 % 281474976710656 = 15258789062500
    uint64(stor3.field_64) = 0
    stor2.field_0 % 16777216 = 0
    Mask(72, 0, stor2.field_24) = 59604644775390625000
    uint32(stor2.field_96) = 0
    uint128(stor2.field_128) = uint64(stor1.field_160)
    stor2.field_256 % 1 = 0
    return code.data[281 len 2314]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint64 stor1; offset 160
address owner;
uint64 tau; offset 128
uint128 way;
uint128 stor2; offset 128
uint128 stor3;

function way() {
    return way
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function tau() {
    return tau
}

function _fallback() payable {
    revert
}

function era() {
    if not stor1:
        return uint64(block.timestamp)
    return stor1
}

function sub_c8d10f40(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require stor1
    if not uint64(arg1):
        stor1 = 0
    else:
        stor1 = uint64(uint64(arg1) + stor1)
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function sub_ca2201c5(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    way = uint128(arg1)
    require uint128(arg1) < 1000200000 * 10^18
    require way > 999800000 * 10^18
}

function prod() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor1:
        if bool(block.timestamp - tau) != 0:
            s = way
            idx = uint64(block.timestamp - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint64(block.timestamp - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    else:
        if bool(stor1 - tau) != 0:
            s = way
            idx = uint64(stor1 - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint64(stor1 - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    require (stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
    stor3 = uint128((stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
    if not stor1:
        tau = uint64(block.timestamp)
    else:
        stor2 = stor1
}

function par() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor1:
        if bool(block.timestamp - tau) != 0:
            s = way
            idx = uint64(block.timestamp - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint64(block.timestamp - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    else:
        if bool(stor1 - tau) != 0:
            s = way
            idx = uint64(stor1 - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint64(stor1 - tau) / 2
            t = way
            while uint64(idx):
                require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                if not bool(idx):
                    s = s
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = uint64(idx) / 2
                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    require (stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
    stor3 = uint128((stor3 * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
    if not stor1:
        tau = uint64(block.timestamp)
    else:
        stor2 = stor1
    return stor3
}



}
