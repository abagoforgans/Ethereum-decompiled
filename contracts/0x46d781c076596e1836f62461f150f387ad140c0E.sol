contract main {




// =====================  Runtime code  =====================


const sub_4d77532d(?) = 0x64b29dc43e817817cf77468c8dda63d98ce08fb2


address ambi2Address;

function ambi2() {
    return ambi2Address
}

function _fallback() payable {
    revert
}

function sub_0c6008af(?) {
    return 32, 55, 
           6930300956879882882,
           0, 0x5af43d91908282803e602b57 or address(arg1),
           0,
           Mask(184, -256, 6930300956879882882, 0, 0x5af43d91908282803e602b57 or address(arg1), 0) << 256
}

function deploy() {
    if not ambi2Address:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(ambi2Address)
    call ambi2Address.0x2d3e579a with:
         gas gas_remaining wei
        args address(this.address), 'deploy', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        # nil
    else:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
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



}
