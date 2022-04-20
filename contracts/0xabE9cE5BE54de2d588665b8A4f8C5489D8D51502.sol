contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len -2446] = code.data[2940 len -2446]
    mem[64] = -2350
    _4 = mem[160]
    mem[-2314] = mem[108 len 20]
    mem[-2218] = mem[223 len 1]
    mem[-2186] = mem[224]
    mem[-2154] = bool(mem[256])
    mem[-2122] = mem[mem[128] + 96]
    _10 = mem[mem[128] + 96]
    mem[-2090 len ceil32(mem[mem[128] + 96])] = mem[mem[128] + 128 len ceil32(mem[mem[128] + 96])]
    if not _10 % 32:
        mem[_10 - 2090] = mem[_4 + 96]
        _27 = mem[_4 + 96]
        mem[_10 - 2058 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _27 % 32:
            require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
            delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x93292972 with:
                 gas gas_remaining - 710 wei
                args 0, mem[-2314], 224, _10 + 256, mem[-2218 len _27 + _10 + 160]
        else:
            mem[floor32(_27) + _10 - 2058] = mem[floor32(_27) + _10 + -(_27 % 32) - 2026 len _27 % 32]
            require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
            delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x93292972 with:
                 gas gas_remaining - 710 wei
                args 0, mem[-2314], 224, _10 + 256, mem[-2218 len floor32(_27) + _10 + 192]
    else:
        mem[floor32(_10) - 2090] = mem[floor32(_10) + -(_10 % 32) - 2058 len _10 % 32]
        mem[floor32(_10) - 2058] = mem[_4 + 96]
        _30 = mem[_4 + 96]
        mem[floor32(_10) - 2026 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _30 % 32:
            require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
            delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x93292972 with:
                 gas gas_remaining - 710 wei
                args 0, mem[-2314], 224, floor32(_10) + 288, mem[-2218 len _30 + floor32(_10) + 192]
        else:
            mem[floor32(_30) + floor32(_10) - 2026] = mem[floor32(_30) + floor32(_10) + -(_30 % 32) - 1994 len _30 % 32]
            require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
            delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x93292972 with:
                 gas gas_remaining - 710 wei
                args 0, mem[-2314], 224, floor32(_10) + 288, mem[-2218 len floor32(_30) + floor32(_10) + 224]
    require delegate.return_code
    return code.data[494 len 2446]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 initialSupply;
uint8 decimals; offset 160
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x3af00d0f with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function burnToken(uint256 arg1) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x6269321c with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function changeOwner(address arg1) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x6f71ca3c with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function allowance(address arg1, address arg2) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0xac9b44f7 with:
         gas gas_remaining - 710 wei
        args 0, address(arg1), arg2
    require delegate.return_code
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x8ca979ca with:
         gas gas_remaining - 710 wei
        args 0, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0xd4b1770a with:
         gas gas_remaining - 710 wei
        args 0, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6)
    delegate 0x2d509d0af485c8da54d8aeb42c624e7d9e2eeb6.0x21a6a23d with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}



}
