contract main {


// =======================  Init code  ======================


array of address stor0;
address stor1;

function _fallback() payable {
    mem[96] = 0xf55dfd2b02cf3282680c94bd01e9da044044e6a2
    mem[128] = 0xd40b53828948b340673674ae65ee7f5d8488e33
    mem[160] = 0xea690d466d6bbd18f124e204ea486a4bf934cba
    mem[192] = 0x6d25b9f40b92ccf158250625a152574603465192
    mem[224] = 0x481da0f1e89c206712bcea4f7d6e60d7b42f6c6c
    mem[256] = 0x416eda5d6ed29cac3e6d97c102d61bc578c5db87
    mem[288] = 0xd78ac6ffc90e084f5fd563563cc9fd33ee303f18
    mem[320] = 0xe6714ab523acecf9b85d880492a2acdbe4184892
    mem[352] = 0x285a9ca5fe9ee854457016a7a5d3a3bb95538093
    mem[384] = 0x600ca6372f312b081205b2c3da72517a603a15cc
    mem[416] = 0x2b8d5c9209fbd500fd817d960830ac6718b88112
    mem[448] = 0x4b15dd23e5f9062e4fb3a9b7decf653c0215e560
    mem[480] = 0xd67449e6ab23c1f46dea77d3f5e5d47ff33dc9a9
    mem[512] = 0xd0adad7ed81afda039969566ceb8423e0ab14d90
    mem[544] = 0x245f27796a44d7e3d30654ed62850ff09ee85656
    mem[576] = 0x639d6ec2cef4d6f7130b40132b3b6f5b667e5105
    mem[608] = 0x5e9a69b8656914965d69d8da49c3709f0bf2b5ef
    mem[640] = 0x832c3b801319b62ab1d3535615d1fe9afc3397a
    mem[672] = 0xf6dd631279377205818c3a6725eeefb9d0f6b9f3
    mem[704] = 0x47696054e71e4c3f899119601a255a7065c3087b
    mem[736] = 0xf107be6c6833f61a24c64d63c8a7fcd784abff06
    mem[768] = 0x56f072bd2240315b708dbcbdde80d400f0394a1
    mem[800] = 0x9e5baec244d8ccd49477037e28ed70584eead956
    mem[832] = 0x40a0b2c1b4e30f27e21df94e734671856b485966
    mem[864] = 0x84f0620a547a4d14a7987770c4f5c25d488d6335
    mem[896] = 0x36ac11c161c09d94ca39f7b24c1bc82046c332b
    mem[928] = 0x2912a18c902de6f95321d6d6305d7b80eec4c055
    mem[960] = 0xe1ad30971b83c17e2a24c0334cb45f808abebc87
    mem[992] = 0x7f35b7fe735c49fd5051d5a0c2e74c9177fea6d
    mem[1024] = 0x11669cce6af3ce1ef3777721fcc0eef0ee57eaba
    mem[1056] = 0xbdbaf6434d40d6355b1e80e40cc4ab9c68d96116
    mem[1088] = 0x17125b59ac51cee029e4bd78d7f5947d1ea49bb2
    mem[1120] = 0xa382a3a65c3f8ee2b726a2535b3c34a89d9094d4
    mem[1152] = 0xab78c8781fb64bed37b274c5ee759ee33465f1f3
    mem[1184] = 0xe74f2062612e3cae8a93e24b2f0d3a2133373884
    mem[1216] = 0x505120957a9806827f8f111a123561e82c40bc78
    mem[1248] = 0xa46922b1c54ae6b5818c49b97e03eb4bb352e1
    mem[1280] = 0xe76fe52a251c8f3a5dcd657e47a6c8d16fdf4bfa
    stor0.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        stor0[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor1 = 0x4fd997ed7c10dbd04e95d3730cd77d79513076f2
    if not msg.value:
        return code.data[3009 len 490]
    revert
}



// =====================  Runtime code  =====================


array of address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_545b7c9b(?) {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        mem[128] = 0
        mem[100] = stor0[idx]
        require ext_code.size(stor1)
        call stor1.0x27e235e3 with:
             gas gas_remaining - 710 wei
            args stor0[idx]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length / 10^18)
}



}
