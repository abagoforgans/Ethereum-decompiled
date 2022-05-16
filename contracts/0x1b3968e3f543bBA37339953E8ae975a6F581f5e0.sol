contract main {




// =====================  Runtime code  =====================


address ambi2Address;
address prototypeAddress;

function getPrototype() {
    return prototypeAddress
}

function ambi2() {
    return ambi2Address
}

function _fallback() payable {
    revert
}

function setupAmbi2(address arg1) {
    if ambi2Address:
        emit Error('Ambi2 already set');
        return memory
          from 0
           len 32
    if not arg1:
        emit Error('Invalid Ambi2 address');
        return memory
          from 0
           len 32
    require ext_code.size(arg1)
    call arg1.0xb4ba9e11 with:
         gas gas_remaining wei
        args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Claim failed');
        return memory
          from 0
           len 32
    ambi2Address = arg1
    return 1
}

function updateVersion(address arg1) {
    if not ambi2Address:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(ambi2Address)
    call ambi2Address.0x2d3e579a with:
         gas gas_remaining wei
        args address(this.address), 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    if not arg1:
        emit Error('Invalid new prototype');
        return memory
          from 0
           len 32
    prototypeAddress = arg1
    emit PrototypeUpdated(arg1);
    return 1
}



}
