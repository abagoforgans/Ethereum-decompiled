contract main {




// =====================  Runtime code  =====================


const sub_2afdff56(?) = 0x29d5527caa78f1946a409fa6acaf14a0a4a0274b

const sub_2e9cb26a(?) = 0x29d5527caa78f1946a409fa6acaf14a0a4a0274b

const sub_a10dd086(?) = 0xb8d2b921c0ea0ca27266fa63907a079ef25084d0

const sub_db163450(?) = 0x1b3968e3f543bba37339953e8ae975a6f581f5e0

const sub_dff4a6b5(?) = 0xb8d2b921c0ea0ca27266fa63907a079ef25084d0

const ambi2 = 0x2b3e08774e9874f6e3487889651553dd2e4467da


function _fallback() payable {
    if gas_remaining < 10000:
    call 0x29d5527caa78f1946a409fa6acaf14a0a4a0274b with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_e62f20b8(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0xb4ba9e11 with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_df61427e(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'forwardETH', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_fa0c73cc(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'forwardETH', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function forwardCall(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'forwardCall', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_0c95a10e(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'predefinedETH', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    call 0xb8d2b921c0ea0ca27266fa63907a079ef25084d0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_fcc963f1(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'predefinedETH', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    call 0x29d5527caa78f1946a409fa6acaf14a0a4a0274b with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_73f70407(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'forwardERC20', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_42c130e6(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'forwardERC20', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_8571be44(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'predefinedERC20', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xb8d2b921c0ea0ca27266fa63907a079ef25084d0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_afef944f(?) {
    require ext_code.size(0x2b3e08774e9874f6e3487889651553dd2e4467da)
    call 0x2b3e08774e9874f6e3487889651553dd2e4467da.0x2d3e579a with:
         gas gas_remaining wei
        args 0x1b3968e3f543bba37339953e8ae975a6f581f5e0, 'predefinedERC20', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Error('Sender access denied');
        return memory
          from 0
           len 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x29d5527caa78f1946a409fa6acaf14a0a4a0274b, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
