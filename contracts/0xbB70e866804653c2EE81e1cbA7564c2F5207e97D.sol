contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 'dahoam'
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[77 len 1017]
}



// =====================  Runtime code  =====================


const getEventName = ''

const getOrganizer = 0


address organizerAddress;
uint256 sub_fad04d0d;
uint256 eventName;
array of struct sub_f0a65b5a;

function organizer() payable {
    return organizerAddress
}

function eventName() payable {
    return eventName
}

function sub_f0a65b5a(?) payable {
    return sub_f0a65b5a[arg1][1][0 len sub_f0a65b5a[arg1][1].length].field_0
}

function sub_f56fbf1f(?) payable {
    mem[192] = sub_f0a65b5a[arg1][1].field_0
    idx = 192
    s = 0
    while sub_f0a65b5a[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = sub_f0a65b5a[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_f0a65b5a[arg1].field_0, 
           Array(len=sub_f0a65b5a[arg1][1].length, data=mem[192 len sub_f0a65b5a[arg1][1].length + (floor32(sub_f0a65b5a[arg1][1].length - 1) + -sub_f0a65b5a[arg1][1].length + 32 % 32)])
}

function sub_fad04d0d(?) payable {
    return sub_fad04d0d
}

function _fallback() payable {
    revert 
}

function sub_b97beded(?) payable {
    if organizerAddress != msg.sender:
        return 0
    sub_fad04d0d++
    return sub_fad04d0d
}

function sub_56a4fd2a(?) payable {
    if msg.sender == organizerAddress:
        sub_f0a65b5a[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}



}
