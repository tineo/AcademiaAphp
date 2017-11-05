<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Profesor
 *
 * @ORM\Table(name="profesor")
 * @ORM\Entity
 */
class Profesor
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idpersona", type="integer", nullable=true)
     */
    private $idpersona;

    /**
     * @var string
     *
     * @ORM\Column(name="usuario", type="string", length=15, nullable=true)
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
     * @ORM\Column(name="foto", type="string", length=68, nullable=true)
     */
    private $foto;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=15, nullable=true)
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=30, nullable=true)
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="niveleducativo", type="string", length=15, nullable=true)
     */
    private $niveleducativo;

    /**
     * @var string
     *
     * @ORM\Column(name="disciplina", type="string", length=20, nullable=true)
     */
    private $disciplina;

    /**
     * @var integer
     *
     * @ORM\Column(name="estado", type="integer", nullable=true)
     */
    private $estado;

    /**
     * @var integer
     *
     * @ORM\Column(name="idprofesor", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idprofesor;


}

