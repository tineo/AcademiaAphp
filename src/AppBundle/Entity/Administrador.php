<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Administrador
 *
 * @ORM\Table(name="administrador")
 * @ORM\Entity
 */
class Administrador
{
    /**
     * @var string
     *
     * @ORM\Column(name="usuario", type="string", length=30, nullable=true)
     */
    private $usuario;

    /**
     * @var string
     *
     * @ORM\Column(name="contraseña", type="string", length=30, nullable=true)
     */
    private $contraseña;

    /**
     * @var string
     *
     * @ORM\Column(name="idpersona", type="string", length=30, nullable=true)
     */
    private $idpersona;

    /**
     * @var integer
     *
     * @ORM\Column(name="idadmin", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idadmin;


}

