contract main {




// =====================  Runtime code  =====================


const sub_316a4ed8(?) = 2 * 10^16

const sub_cc4179b0(?) = 14 * 10^18

const sub_eb264987(?) = 0x117a36055bf56b0157bd1df3cf45bfd7e01e1663

const sub_ee2ece60(?) = 0xc1a065a2d29995692735c82d228b63df1732030e


address owner;
address sub_7a746b3aAddress;
address sub_f63defffAddress;

function sub_7a746b3a(?) {
    return sub_7a746b3aAddress
}

function owner() {
    return owner
}

function sub_f63defff(?) {
    return sub_f63defffAddress
}

function withdraw() {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit() {
    if owner != msg.sender:
        require 0xc1a065a2d29995692735c82d228b63df1732030e == msg.sender
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ownerWithdraw() {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x4311de8f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x4311de8f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0xc1a065a2d29995692735c82d228b63df1732030e with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function buy() payable {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.buy(address arg1) with:
       value 2 * 10^16 wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x9547dd5b with:
       value msg.value - 2 * 10^16 wei
         gas gas_remaining wei
        args sub_7a746b3aAddress, 14 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dump() {
    if owner != msg.sender:
        require 0xc1a065a2d29995692735c82d228b63df1732030e == msg.sender
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f63defffAddress)
    if ext_call.return_data[0] / 3 > 0:
        call sub_f63defffAddress.0xe4849b32 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] / 3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.0xe4849b32 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] / 3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call sub_f63defffAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender != 0x117a36055bf56b0157bd1df3cf45bfd7e01e1663:
        if msg.value <= 0:
            if owner != msg.sender:
                require 0xc1a065a2d29995692735c82d228b63df1732030e == msg.sender
            require ext_code.size(sub_7a746b3aAddress)
            call sub_7a746b3aAddress.0xe9fad8ee with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f63defffAddress)
            call sub_f63defffAddress.0xe9fad8ee with:
                 gas gas_remaining wei
        else:
            require ext_code.size(sub_7a746b3aAddress)
            call sub_7a746b3aAddress.0x949e8acd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require ext_code.size(sub_7a746b3aAddress)
            call sub_7a746b3aAddress.buy(address arg1) with:
               value 2 * 10^16 wei
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f63defffAddress)
            call sub_f63defffAddress.0x9547dd5b with:
               value msg.value - 2 * 10^16 wei
                 gas gas_remaining wei
                args sub_7a746b3aAddress, 14 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sellAll() {
    if owner != msg.sender:
        require 0xc1a065a2d29995692735c82d228b63df1732030e == msg.sender
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0xe4849b32 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 3 > 0:
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.0xe4849b32 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] / 3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.0xe4849b32 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] / 3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.0xe4849b32 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] / 3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
