contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address address;
mapping of address stor99;

function getAddress(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address[arg1[all]]:
        return address[arg1[all]]
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    revert with 0, 32, arg1.length, arg1[all], mem[arg1.length + 164 len ceil32(arg1.length) - arg1.length]
}

function _fallback() payable {
    revert
}

function setAddress(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can perform this function'
    if not arg2:
        revert with 0, 'Provided address is not a valid address'
    if not arg1.length:
        revert with 0, 'Provided key is not valid'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = arg2
}



}
